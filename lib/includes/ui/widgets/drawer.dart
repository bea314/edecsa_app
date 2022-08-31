import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/imagenes/paneles01.jpg',),
              ),
            ),
          child: Container(),
          ),
          DrawerTileWidget(title: 'Información',),
          const Divider(),
          DrawerTileWidget(title: 'Dispositivos',),
          const Divider(),
          DrawerTileWidget(title: 'Configuración',),
          const Divider(),
        ],
      ),
    );
  }
}

class DrawerTileWidget extends StatelessWidget {
  String title;

  DrawerTileWidget({
    Key? key,
    required this.title,
  }) : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: const Icon(Icons.info_outline_rounded),
      title: Text(title),
      onTap: (){},
    );
  }
}