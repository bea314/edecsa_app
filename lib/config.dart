class CONFIG {
  
  static const bool produccion  = false;

  static const String ipServer  = (produccion ? '127.0.0.1' : '127.0.0.1');
  static const String port      = '5000';
  
  static const String socket    = 'https://$ipServer:$port';

}

class MEDIA {
  static const String dir       = 'assets';

  static const String dirIcon   = '$dir/icons';
  static const String arrow     = '$dirIcon/left-arrow02.png';

  static const String dirImg    = '$dir/imagenes';
  static const String edecsa    = '$dirImg/android12splash.png';
}