import 'package:flutter/material.dart';
import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/includes/ui/widgets/widget.dart';
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
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flecha(mov: DirMov.izquierda,),
          Flecha(mov: DirMov.derecha,),
        ],
      ),
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
      icon: (mov == DirMov.derecha) ?RotatedBox(quarterTurns: 2, child: Image.asset("assets/icons/left-arrow02.png"))
      :Image.asset("assets/icons/left-arrow02.png"),
      iconSize: responsive.ip(15),
      splashRadius: responsive.ip(9),
      onPressed: () {
        // TODO
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