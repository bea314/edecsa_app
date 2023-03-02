import 'package:edecsa_app/includes/ui/theme.dart';
import 'package:edecsa_app/includes/utils/utils.dart';
import 'package:flutter/material.dart';

class DividerShadowWidget extends StatelessWidget {
  const DividerShadowWidget({Key? key, this.height = 4.0}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      margin: EdgeInsets.only(left: responsive.wp(2), right: responsive.wp(15)),
      height: height,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppTheme.n2.withOpacity(0.25),
            width: 3.0,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppTheme.n2.withOpacity(0.25),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}

class SimpleDividerWidget extends StatelessWidget {
  const SimpleDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Divider(thickness: 3, color: AppTheme.n2.withOpacity(0.25), indent: responsive.wp(2), endIndent: responsive.wp(55),);
  }
}