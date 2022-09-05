import 'package:flutter/material.dart';
import 'package:edecsa_app/includes/utils/responsive.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';


class LayerScreen extends StatelessWidget {
  Widget child;

   
  LayerScreen({
    Key? key
    , required this.child
  }) : super(key: key);

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
        // alignment: Alignment.center,
        child: child
      ))
    );
  }
}