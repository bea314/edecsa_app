import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

enum IConnectionStatus { checking, online, offline }

class WifiCore extends ChangeNotifier {

  bool _isDeviceConnected = false;
  // late StreamSubscription<InternetConnectionStatus>  wifiStatusStream;
  late StreamSubscription<ConnectivityResult>  wifiStatusStream;
  IConnectionStatus connectionStatus = IConnectionStatus.checking;

  bool get isDeviceConnected => _isDeviceConnected;
  set isDeviceConnected(bool value) {
    if (value != _isDeviceConnected) {
      _isDeviceConnected = value;
      if(isDeviceConnected == false) connectionStatus = IConnectionStatus.offline;
      if(isDeviceConnected == true) connectionStatus = IConnectionStatus.online; 
      notifyListeners();
    } 
  }

  WifiCore() {
    wifiStatusStream = Connectivity().onConnectivityChanged.listen((ConnectivityResult  result) 
     async => (result != ConnectivityResult.none) ? await wifiCheck(result) : isDeviceConnected = false);
  }

  Future<bool> wifiCheck(ConnectivityResult status) async {
    debugPrint('----WIFI check $status');
    try {
      switch (status) {
        case ConnectivityResult.wifi:
          debugPrint('WIFI ONLINE');
          isDeviceConnected = true;
          break;
        case ConnectivityResult.mobile:
          debugPrint('MOBILE ONLINE');
          isDeviceConnected = true;
          break;
        case ConnectivityResult.none:
          debugPrint('OFFLINE');
          isDeviceConnected = false;
          break;
        default:
          debugPrint('OFFLINE');
          isDeviceConnected = true;
      }
      debugPrint('isDeviceConnected: $isDeviceConnected');
    } on SocketException catch (_) {
      isDeviceConnected = false; debugPrint('not connected');
    } catch (_) {
      isDeviceConnected = false; debugPrint('not connected');
    }
    return true;
  }

}