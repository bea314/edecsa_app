import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {

  bool _rState      = false;
  bool _rRdllState  = false;
  bool _rAguaState  = false;

  bool get rState => _rState;
  set rState(bool value) {
    if (value != _rState) {
      _rState = value;
      notifyListeners();
    } 
  }
  
  bool get rRdllState => _rRdllState;
  set rRdllState(bool value) {
    if (value != _rRdllState) {
      _rRdllState = value;
      notifyListeners();
    } 
  }
  
  bool get rAguaState => _rAguaState;
  set rAguaState(bool value) {
    if (value != _rAguaState) {
      _rAguaState = value;
      notifyListeners();
    } 
  }

}