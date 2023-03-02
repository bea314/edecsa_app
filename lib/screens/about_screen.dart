import 'package:flutter/material.dart';
import 'package:edecsa_app/screens/screens.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';

class AboutScreen extends StatelessWidget {
   
  const AboutScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const LayerScreen(child: AboutView());
  }
}

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const children = <TextSpan>[
            TextSpan(text: '\n\nAplicación oficial de ',),
            TextSpan(text: 'EDECSA\n', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'para la limpieza de paneles solares en convenio con la '),
            TextSpan(text: 'Universidad Don Bosco.\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
          ];
    const children2 = <TextSpan>[
            TextSpan(text: 'Desarrollado por\n',),
            TextSpan(text: 'Beatriz Del Pinal', style: TextStyle(fontWeight: FontWeight.bold)),
          ];
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        richtext02(context, children),
        richtext02(context, children2),
      ]
    );
  }
}