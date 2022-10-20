import 'package:flutter/material.dart';

Widget titulo01(BuildContext context, String title) {
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline1,);
}

Widget titulo02(BuildContext context, String title) {
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2,);
}

Widget texto01(BuildContext context, String title) {
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,);
}

Widget texto02(BuildContext context, String title) {
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText2,);
}

Widget richtext02(BuildContext context, List<TextSpan> children) {
    return RichText( textAlign: TextAlign.center,
        text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2,
        children: children,
      )
    );
  }