import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {

  bool _rState      = false;  // estado robot ON OFF
  bool _rRdllState  = false;  // estado rodillo
  bool _rAguaState  = false;  // estado agua
  bool _mMovIzq     = false;  // mov manual izquierdo
  bool _mMovDer     = false;  // mov manual derecho

  bool _onTest  = false;

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

  bool get mMovIzq => _mMovIzq;
  set mMovIzq(bool value) {
    if (value != _mMovIzq) {
      _mMovIzq = value;
      notifyListeners();
    } 
  }

  bool get mMovDer => _mMovDer;
  set mMovDer(bool value) {
    if (value != _mMovDer) {
      _mMovDer = value;
      notifyListeners();
    } 
  }

  bool get onTest => _onTest;
  set onTest(bool value) {
    if (value != _onTest) {
      _onTest = value;
      notifyListeners();
    } 
  }
}