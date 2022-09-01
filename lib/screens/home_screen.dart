import 'package:edecsa_app/includes/ui/widgets/widget.dart';
import 'package:flutter/material.dart';

import 'package:edecsa_app/includes/utils/responsive.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerWidget(),
      body: SafeArea(child: Container(
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(5)),
        width: responsive.width,
        height: responsive.height,
        child: Wrap(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            MovimientoCombo(),
            SwitchesCombo(),
            BtnPrincipal(),
          ],
        ),
      ))
    );
  }
}