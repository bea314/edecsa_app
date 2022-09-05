import 'package:edecsa_app/includes/ui/widgets/widget.dart';
import 'package:flutter/material.dart';

import 'package:edecsa_app/includes/utils/responsive.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

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