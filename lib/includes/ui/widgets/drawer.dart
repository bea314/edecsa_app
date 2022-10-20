import 'package:flutter/material.dart';
import 'package:edecsa_app/screens/screens.dart';
import 'package:page_transition/page_transition.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader( child: Container(), ),
          DrawerTileWidget(
            title: 'Inicio',
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const HomeScreen(),)),
          ),
          const Divider(),
          DrawerTileWidget(
            title: 'Dispositivos',
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
          ),
          const Divider(),
          DrawerTileWidget(
            title: 'Configuración', 
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
          ),
          const Divider(),
          DrawerTileWidget(
            title: 'Acerca De',
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const AboutScreen(),)),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class DrawerTileWidget extends StatelessWidget {
  String title;
  IconData? icon;
  void Function()? ontap;

  DrawerTileWidget({
    Key? key
    , required this.title
    , this.icon
    , this.ontap
  }) : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (icon == null) ?null :const Icon(Icons.emergency_rounded),
      title: Text(title),
      onTap: ontap,
    );
  }
}