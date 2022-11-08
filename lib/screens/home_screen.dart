import 'package:flutter/material.dart';
import 'package:edecsa_app/screens/screens.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayerScreen(child: const HomeView());
  }
}

class HomeView extends StatelessWidget {
   
  const HomeView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MovimientoCombo(),
        SwitchesCombo(),
        BtnPrincipal(),
      ],
    );
  }
}