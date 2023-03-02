import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:edecsa_app/includes/providers/global_provider.dart';
import 'package:edecsa_app/includes/providers/wifi_core.dart';
import 'package:edecsa_app/includes/providers/socket_io.dart';

import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/screens/screens.dart';

import 'package:edecsa_app/config.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(lazy: false, create: (_) => GlobalProvider()),
      ChangeNotifierProvider(lazy: false, create: (_) => WifiCore()),
      ChangeNotifierProvider(lazy: false, create: (_) => SocketIO(uri: CONFIG.socket, autoConnect: false)),
    ],
  child: const MyApp())
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EDECSA',
      home: const HomeScreen(),
      theme: AppTheme.darkTheme
    );
  }
}