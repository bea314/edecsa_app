import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:edecsa_app/includes/utils/utils.dart';

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

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flecha(mov: DirMov.izquierda,),
        Flecha(mov: DirMov.derecha,),
      ],
    );
  }
}

class Flecha extends StatelessWidget {
  DirMov? mov;

  Flecha({Key? key, required this.mov,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return IconButton(
      icon: (mov == DirMov.derecha) ?const Icon(Icons.keyboard_double_arrow_right_rounded)
      :const Icon(Icons.keyboard_double_arrow_left_rounded),
      // icon: (mov == DirMov.derecha) ?Icon(Icons.arrow_forward_rounded)
      // :Icon(Icons.arrow_back_rounded),
      iconSize: responsive.ip(15),
      onPressed: () {
        //
      },
    );
  }
}

class BtnPrincipal extends StatelessWidget {
  const BtnPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final size = responsive.ip(4);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // FloatingActionButton.large(onPressed: (){}, elevation: 0, child: const Text('START'),)
        // Container(
        //   decoration: BoxDecoration(shape: BoxShape.circle),
        //   child: InkWell(
        //     onTap: () {
        //       //
        //     },
        //     // ignore: avoid_returning_null_for_void
        //     onTapCancel: () => null,
        //     child: CircleAvatar(backgroundColor: AppTheme.n3, radius: radius, child: FittedBox(child: Text('START'), fit: BoxFit.contain,),)
        //   ),
        // )
        FittedBox(
          fit: BoxFit.contain,
          child: InkWell(
            onTap: () => print('START'),
            onTapCancel: () => print('CANCEL'),
            child: MaterialButton(
              onPressed: () {print('START2');},
              color: AppTheme.n3,
              padding: EdgeInsets.all(size*1.5),
              shape: const CircleBorder(),
              child:  Text('START', style: TextStyle(fontSize: size),),
            ),
          ),
        )

      ],
    );
  }
}