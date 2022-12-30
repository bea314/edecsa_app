import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

enum IConnectionStatus { Checking, Online, Offline }

class WifiCore extends ChangeNotifier {

  bool _isDeviceConnected = false;
  // late StreamSubscription<InternetConnectionStatus>  wifiStatusStream;
  late StreamSubscription<ConnectivityResult>  wifiStatusStream;
  IConnectionStatus connectionStatus = IConnectionStatus.Checking;

  bool get isDeviceConnected => _isDeviceConnected;
  set isDeviceConnected(bool value) {
    if (value != _isDeviceConnected) {
      _isDeviceConnected = value;
      if(isDeviceConnected == false) connectionStatus = IConnectionStatus.Offline;
      if(isDeviceConnected == true) connectionStatus = IConnectionStatus.Online; 
      notifyListeners();
    } 
  }

  WifiCore() {
    wifiStatusStream = Connectivity().onConnectivityChanged.listen((ConnectivityResult  result) 
     async => (result != ConnectivityResult.none) ? await wifiCheck(result) : isDeviceConnected = false);
  }

  Future<bool> wifiCheck(ConnectivityResult status) async {
    print('----WIFI check $status');
    try {
      switch (status) {
        case ConnectivityResult.wifi:
          print('WIFI ONLINE');
          isDeviceConnected = true;
          break;
        case ConnectivityResult.mobile:
          print('MOBILE ONLINE');
          isDeviceConnected = true;
          break;
        case ConnectivityResult.none:
          print('OFFLINE');
          isDeviceConnected = false;
          break;
        default:
          print('OFFLINE');
          isDeviceConnected = true;
      }
      print('isDeviceConnected: ${isDeviceConnected}');
    } on SocketException catch (_) {
      isDeviceConnected = false; print('not connected');
    } catch (_) {
      isDeviceConnected = false; print('not connected');
    }
    return true;
  }

}