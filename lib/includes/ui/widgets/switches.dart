import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import 'package:edecsa_app/includes/providers/global_provider.dart';
import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/includes/utils/utils.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';

class SwitchesCombo extends StatelessWidget {
  const SwitchesCombo({Key? key}) : super(key: key);

  void onRodillo(GlobalProvider global) => (global.rRdllState == false)?global.rRdllState=true:global.rRdllState=false;
  void onAgua(GlobalProvider global)    => (global.rAguaState == false)?global.rAguaState=true:global.rAguaState=false;
  void onTest(GlobalProvider global)    => (global.aDesplz == false)?global.aDesplz=true:global.aDesplz=false;

  final Color colorButton  = AppTheme.n3;
  final Color colorButton2 = AppTheme.n5;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SizedBox(
      height: responsive.hp(25),
      width: responsive.width,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Consumer<GlobalProvider>(
          builder: (context, global, child) {
            bool stateR = global.rRdllState;
            bool stateA = global.rAguaState;
            bool stateT = global.aDesplz;
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: responsive.ip(1)),
                  width: responsive.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SwitchBundleWidget('RODILLO', (stateR)?colorButton:colorButton2, () => onRodillo(global)),
                      SwitchBundleWidget('AGUA', (stateA)?colorButton:colorButton2, () => onAgua(global)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: responsive.ip(1)),
                  child: SwitchBundle2Widget('DESPLAZAMIENTO', stateT, () => onTest(global)),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

class SwitchBundleWidget extends StatelessWidget {
   
  const SwitchBundleWidget(this.title, this.circleColor, this.function, {super.key});

  final String title;
  final Color circleColor;
  final void Function() function;
  
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        titulo02(context, title),
        Row(
          children: [
            SwitchWidget01(function: function),
            CircleAvatar(backgroundColor:  circleColor, maxRadius: responsive.ip(1.0))
          ],
        )
      ],
    );
  }
}

class SwitchBundle2Widget extends StatelessWidget {
   
  const SwitchBundle2Widget(this.title, this.onBold, this.function, {super.key});

  final String title;
  final bool onBold;
  final void Function() function;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titulo02(context, title),
        Row(
          children: [
            (onBold)?texto01(context, 'IZQUIERDA',):texto03(context, 'IZQUIERDA',),
            SwitchWidget01(withTrack: false, function: function),
            (onBold)?texto03(context, 'DERECHA',):texto01(context, 'DERECHA',),
          ],
        )
      ],
    );
  }
}

class SwitchWidget01 extends StatefulWidget {
  final bool withTrack;
  final void Function()? function;

  const SwitchWidget01({
    Key? key
    , this.withTrack = true
    , this.function
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
        trackColor: (widget.withTrack)?null:AppTheme.light,
        activeColor: (widget.withTrack)?AppTheme.n4.withOpacity(0.6):AppTheme.light,
        thumbColor: AppTheme.n4,
        value: _value, 
        onChanged: (value) {
          if(widget.function != null)widget.function!();
          setState(() { _value = value; });  
        }
      ),
    );
  }
}