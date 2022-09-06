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
          DrawerTileWidget(
            title: 'Inicio',
            ontap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const HomeScreen(),)),
          ),
          const Divider(),
          DrawerTileWidget(
            title: 'Dispositivos',
            ontap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
          ),
          const Divider(),
          DrawerTileWidget(
            title: 'Configuración', 
            ontap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
          ),
          const Divider(),
          DrawerTileWidget(
            title: 'Créditos',
            ontap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
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