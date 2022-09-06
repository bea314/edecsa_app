import 'package:flutter/material.dart';
import 'package:edecsa_app/screens/screens.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return LayerScreen(child: const ConfigView());
  }

}

class ConfigView extends StatelessWidget {
  const ConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('CONFIG'));
  }
}