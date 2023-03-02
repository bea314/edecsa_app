import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edecsa_app/screens/screens.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';
import 'package:edecsa_app/includes/providers/global_provider.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LayerScreen(child: HomeView());
  }
}

class HomeView extends StatelessWidget {
   
  const HomeView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: Quitar las variables de provider en este archivo cuando no se necesiten revisar todas las variables
    final global = Provider.of<GlobalProvider>(context, listen: true);

    debugPrint('''
        -----------------------------
        ROBOT   :   ${global.rState}
        AGUA    :   ${global.rAguaState}
        RDLLO   :   ${global.rRdllState}
        MANUAL  :   ${(global.mMovDer)?'derecha':(global.mMovIzq)?'izquierda':'NULL'}
        AUTO    :   ${(global.aDesplz)?'derecha':'izquierda'}
        MOV     :   WIP
        -----------------------------
    ''');

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        MovimientoCombo(),
        SwitchesCombo(),
        BtnPrincipal(),
      ],
    );
  }
}