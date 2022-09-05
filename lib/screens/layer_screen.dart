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
      appBar: AppBar(
        actions: actions,
      ),
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

  List<Widget> get actions {
    return <Widget>[
        IconButton(
          icon: const Icon(
            Icons.wifi, // Iconos: wifi, wifi_1_bar, wifi_2_bar
            color: Colors.white,
          ),
          onPressed: () => null,
        ),
        IconButton(
          icon: const Icon(
            Icons.battery_4_bar, // Iconos: battery_0_bar, battery_1_bar, ..., battery_alert, battery_charging_full
            color: Colors.white,
          ),
          onPressed: () => null,
        )
      ];
  }
}