import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {

  bool _rState = false;

  bool get rState => _rState;
  set rState(bool value) {
    if (value != _rState) {
      _rState = value;
      notifyListeners();
    } 
  }
  

}