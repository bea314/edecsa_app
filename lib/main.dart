import 'package:flutter/material.dart';
import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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