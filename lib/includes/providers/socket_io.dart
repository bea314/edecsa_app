import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:socket_io_client/socket_io_client.dart' as io;

enum SocketStatus { sWaiting, sConnected, sDisconnected, sError }

class SocketIO extends ChangeNotifier {
  io.Socket? socket; late Timer timer; String? sid;
  
  dynamic url;
  bool autoConnect = true, connected = false, _bLoading = false;
  SocketStatus status = SocketStatus.sWaiting;

  VoidCallback onConnected    = () {}; set eventConnected (VoidCallback func)  => onConnected  = func;
  VoidCallback onDisconnected = () {}; set eventDisconnect(VoidCallback func)  => onDisconnected = func;
  VoidCallback onError        = () {}; set eventError(VoidCallback func)       => onError = func;

  String?  get id   => (socket?.id ?? sid);
  Function get emit => socket!.emit;
  Function get on   => socket!.on;
  Function get off  => socket!.off;

  SocketIO({ required dynamic uri, bool autoConnect = true }) { startup(url = uri, autoConnect = autoConnect); }

  Future<io.Socket?> startup(dynamic uri, bool autoConnect) async {
    if( status == SocketStatus.sWaiting && socket == null ){
      timer = Timer(const Duration(seconds: 10), () { 
        timer.cancel();
        status = SocketStatus.sDisconnected;
        notifyListeners();
      });

      try{
        socket = io.io(Uri.parse(uri).toString(), io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()             // disable auto-connection
          //.setExtraHeaders({'foo': 'bar'})  // optional
            .build());

        socket?.onConnect((res) {
          // print('Connect - SocketIO -> ID: ${socket!.id}');
          timer.cancel(); sid = socket?.id??'';
          status = SocketStatus.sConnected;
          try{ onConnected(); } catch (_){}
          notifyListeners();
        });

        socket?.onDisconnect((res) {
          // print('Disconnect - SocketIO -> ID: $sid');
          timer.cancel(); sid = '';
          status = SocketStatus.sDisconnected;
          try{ onDisconnected(); } catch (_){}
          notifyListeners();
        });

        socket?.onError((data) {
          // print('Error - SocketIO -');
          timer.cancel(); sid = '';
          status = SocketStatus.sError;
          try{ onError(); } catch (_){}
          notifyListeners();
        });

        if( autoConnect ) { socket?.connect(); connected = true; }
        return socket;
      } catch (_) {}
    }
    return null;
  }

  Future<void> goConnect() async { try {
    if( !connected ) {
      socket?.io.connect();
      socket?.connect();
      connected = true;
    }
  } catch (_) {}}

  Future<void> goReconnect() async { try {
    if( connected ) {
      socket!.io..disconnect()..connect();
      socket!.disconnect().connect();
      connected = true;
    }
  } catch (_) {}}

  Future<void> goReStart() async {
    await goDisconnect();
    startup(url, autoConnect);
  }

  Future<void> goDisconnect([bool destroy = true]) async {
    if( connected ) {
      socket!.io.disconnect();
      socket!.close();
      status = SocketStatus.sWaiting;
      connected = false;
      if( destroy ) { connected = true; goDestroy(); }
    }
  }

  Future<void> goDestroy() async {
    if( connected ) {
      socket!.io..disconnect()..close()..destroy(socket);
      socket!.close().dispose();
      status = SocketStatus.sWaiting;
      /*socket = null;*/ connected = false;
      socket!.clearListeners();
    }
  }

  bool get bLoading => _bLoading;
  set bLoading(bool value) {
    if (value != _bLoading) {
      _bLoading = value;
      notifyListeners();
    } 
  }
}