import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {

  bool _rState      = false;  // estado de robot modo ON OFF
  bool _rRdllState  = false;  // estado de rodillo
  bool _rAguaState  = false;  // estado de agua
  bool _mMovIzq     = false;  // mov manual izquierdo
  bool _mMovDer     = false;  // mov manual derecho
  bool _aDesplz     = false;  // estado de desplazamiento automatico

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

  bool get aDesplz => _aDesplz;
  set aDesplz(bool value) {
    if (value != _aDesplz) {
      _aDesplz = value;
      notifyListeners();
    } 
  }

}