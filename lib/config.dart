class CONFIG {
  
  static const bool produccion  = false;

  static const String ipServer  = (produccion ? '127.0.0.1' : '127.0.0.1');
  static const String port      = '5000';
  
  static const String socket    = 'https://$ipServer:$port';

}