import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:edecsa_app/includes/utils/utils.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';

class SwitchesCombo extends StatelessWidget {
  const SwitchesCombo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      height: responsive.hp(25),
      width: responsive.width,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: responsive.ip(1)),
              width: responsive.width,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SwitchBundleWidget('RODILLO'),
                  SwitchBundleWidget('AGUA'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: responsive.ip(1)),
              child: SwitchBundle2Widget('DESPLAZAMIENTO'),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchBundleWidget extends StatelessWidget {
   
  SwitchBundleWidget(this.title);

  String title;
  
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        titulo02(context, title),
        Row(
          children: [
            const SwitchWidget01(),
            CircleAvatar(backgroundColor: Colors.green, maxRadius: responsive.ip(1.0))
          ],
        )
      ],
    );
  }
}

class SwitchBundle2Widget extends StatelessWidget {
   
  SwitchBundle2Widget(this.title);

  String title;
  
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        titulo02(context, title),
        Row(
          children: [
            texto01(context, 'IZQUIERDA'),
            const SwitchWidget01(),
            texto01(context, 'DERECHA'),
          ],
        )
      ],
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CupertinoSwitch(
        value: _value, 
        onChanged: (value){
          setState(() {  
            _value = value;  
          });  
        }
      ),
    );
  }
}