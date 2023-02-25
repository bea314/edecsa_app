import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edecsa_app/includes/providers/wifi_core.dart';
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
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
        width: responsive.width,
        height: responsive.height,
        // alignment: Alignment.center,
        child: child
      ))
    );
  }

  List<Widget> get actions {
    return <Widget>[
      Consumer<WifiCore>(builder: (_, bloc, __) =>
        IconButton(
          icon: Icon(
            (bloc.isDeviceConnected)?Icons.wifi:Icons.wifi_1_bar, // Iconos: wifi, wifi_1_bar, wifi_2_bar
            color: Colors.white,
          ),
          onPressed: () => null,
        ),
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