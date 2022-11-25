import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:edecsa_app/includes/providers/global_provider.dart';
import 'package:edecsa_app/includes/utils/utils.dart';
import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';

enum DirMov {derecha, izquierda}

class MovimientoCombo extends StatelessWidget {
  const MovimientoCombo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titulo02(context, 'MOVIMIENTO'),
        const FlechasBundle()
      ],
    );
  }
}

class FlechasBundle extends StatelessWidget {
  const FlechasBundle({
    Key? key,
  }) : super(key: key);

  void onTapIzqDOWN(GlobalProvider global) => global.mMovIzq = true;
  void onTapIzqUP(GlobalProvider global)   => global.mMovIzq = false;
  void onTapDerDOWN(GlobalProvider global) => global.mMovDer = true;
  void onTapDerUP(GlobalProvider global)   => global.mMovDer = false;

  @override
  Widget build(BuildContext context) {
    final global = Provider.of<GlobalProvider>(context, listen: false);
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flecha(mov: DirMov.izquierda, onTapDown: () => onTapIzqDOWN(global), onTapUp: () => onTapIzqUP(global),),
          Flecha(mov: DirMov.derecha, onTapDown: () => onTapDerDOWN(global), onTapUp: () => onTapDerUP(global),),
        ],
      ),
    );
  }
}

class Flecha extends StatelessWidget {
  DirMov? mov;

  Flecha({Key? key
    , required this.mov
    , this.size
    , this.splashColor = AppTheme.n1
    , this.colorButton = AppTheme.n1
    , required this.onTapDown // presionado
    , required this.onTapUp   // despresionado
    , this.onTapCancel
  }) : super(key: key);
  
  void Function() onTapDown;
  void Function() onTapUp;
  void Function()? onTapCancel;

  double? size;
  Color? splashColor;
  Color? colorButton;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(size??responsive.ip(15)),
      child: Material(
        child: InkWell(
          splashColor: splashColor,
          onTapDown:(_) => onTapDown(),
          onTapUp:(_) => onTapUp(),
          onTapCancel: onTapCancel, 
          child: Ink(
            color: colorButton,
            width: size??responsive.ip(15), height: size??responsive.ip(15),
            child: (mov == DirMov.derecha)?RotatedBox(quarterTurns: 2, child: Image.asset("assets/icons/left-arrow02.png", fit: BoxFit.contain,))
              :Image.asset("assets/icons/left-arrow02.png", fit: BoxFit.contain,),
          ),
        ),
      )
    );
  }
}

class BigButton extends StatelessWidget {
  BigButton({
    Key? key
    , required this.textSize
    , required this.width
    , this.splashColor = AppTheme.n1
    , this.colorButton = AppTheme.n3
    , required this.text
    , required this.onTap
    , this.onTapCancel
  }) : super(key: key);

  void Function()? onTap;
  void Function()? onTapCancel;

  String text;
  double textSize;
  double width;
  Color? splashColor;
  Color? colorButton;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(width),
      child: Material(
        child: InkWell(
          splashColor: splashColor,
          onTap: onTap, // () => onTap()
          onTapCancel: onTapCancel, 
          child: Ink(
            color: colorButton,
            width: width, height: width,
            padding: EdgeInsets.all(textSize),
            child:  FittedBox(fit: BoxFit.contain, child: Text(text, style: TextStyle(fontSize: textSize),)),
          ),
        ),
      ),
    );
  }
}

class BtnPrincipal extends StatelessWidget {
  BtnPrincipal({
    Key? key
  }) : super(key: key);

  void onTap(GlobalProvider global) {
    if(global.rState == true) {
      global.rState = false;  // STOP
    } else {
      global.rState = true;   // START
    }
  }
  void onTapCancel(GlobalProvider global) {}

  Color splashColor = AppTheme.n1;
  Color colorButton = AppTheme.n3;
  Color colorButton2 = AppTheme.n5;
  
  @override
  Widget build(BuildContext context) {
    final global = Provider.of<GlobalProvider>(context, listen: false);
    final responsive = Responsive(context);
    final size = responsive.ip(2);
    final width = responsive.wp(40);
    return Consumer<GlobalProvider>(
      builder: (context, global, child) {
        return BigButton(
          text: (global.rState == true)?'STOP':'START', 
          colorButton: (global.rState == true)?colorButton2:colorButton,
          textSize: size, width: width, 
          onTap: () => onTap(global), onTapCancel: () => onTapCancel(global),
        );
      },
    );
  }
}