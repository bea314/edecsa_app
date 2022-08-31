import 'package:flutter/material.dart';

import 'package:edecsa_app/includes/utils/responsive.dart';

import 'package:edecsa_app/includes/ui/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerWidget(),
      body: SafeArea(child: Container(
        width: responsive.width,
        height: responsive.height,
        child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SwitchWidget01(),
                SwitchWidget01(),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton.large(onPressed: (){}, elevation: 0, child: const Text('START'),)
              ],
            ),
          ],
        ),
      ))
    );
  }
}

class SwitchWidget01 extends StatefulWidget {
  const SwitchWidget01({
    Key? key,
  }) : super(key: key);

  @override
  State<SwitchWidget01> createState() => _SwitchWidget01State();
}

class _SwitchWidget01State extends State<SwitchWidget01> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _value, 
      onChanged: (value){
        setState(() {  
          _value = value;  
        });  
      }
    );
  }
}

