import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import 'package:edecsa_app/config.dart';
import 'package:edecsa_app/screens/screens.dart';
import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';
import 'package:edecsa_app/includes/utils/utils.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero, margin: EdgeInsets.zero, decoration: const BoxDecoration(color: Colors.transparent), 
            child: Image.asset(MEDIA.edecsa),
          ),
          SizedBox(height: responsive.hp(5),),
          DrawerTileWidget(
            title: 'Inicio',
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const HomeScreen(),)),
          ),
          const SimpleDividerWidget(),
          DrawerTileWidget(
            title: 'Dispositivos',
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
          ),
          const SimpleDividerWidget(),
          DrawerTileWidget(
            title: 'Configuración', 
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const ConfigScreen(),)),
          ),
          const SimpleDividerWidget(),
          DrawerTileWidget(
            title: 'Acerca De',
            ontap: () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: const AboutScreen(),)),
          ),
        ],
      ),
    );
  }
}

class DrawerTileWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? ontap;

  const DrawerTileWidget({
    Key? key
    , required this.title
    , this.icon
    , this.ontap
  }) : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (icon == null) ?null :const Icon(Icons.emergency_rounded),
      title: texto03(context, title, textAlign: TextAlign.left, color: AppTheme.n1),
      onTap: ontap,
    );
  }
}