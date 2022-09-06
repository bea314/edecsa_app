import 'package:flutter/material.dart';
import 'package:edecsa_app/screens/screens.dart';

class AboutScreen extends StatelessWidget {
   
  const AboutScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return LayerScreen(child: const AboutView());
  }
}

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('ABOUT'));
  }
}