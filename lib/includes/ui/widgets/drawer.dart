import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Container()),
          ListTile(
            // leading: const Icon(Icons.info_outline_rounded),
            title: const Text('Información'),
            onTap: (){},
          ),
          ListTile(
            // leading: const Icon(Icons.devices_rounded),
            title: const Text('Dispositivos'),
            onTap: (){},
          ),
          ListTile(
            // leading: const Icon(CupertinoIcons.gear_solid),
            title: const Text('Configuración'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}