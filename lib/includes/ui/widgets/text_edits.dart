import 'package:flutter/material.dart';

Widget titulo01(BuildContext context, String title, {TextAlign textAlign = TextAlign.center}) {
    return Text(title, textAlign: textAlign, style: Theme.of(context).textTheme.titleLarge,);
}

Widget titulo02(BuildContext context, String title, {TextAlign textAlign = TextAlign.center}) {
    return Text(title, textAlign: textAlign, style: Theme.of(context).textTheme.titleMedium,);
}

// SMALL - PARRAFO
Widget texto01(BuildContext context, String title, {TextAlign textAlign = TextAlign.center}) {
    return Text(title, textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge,);
}

// MEDIUM - PARRAFO
Widget texto02(BuildContext context, String title, {TextAlign textAlign = TextAlign.center}) {
    return Text(title, textAlign: textAlign, style: Theme.of(context).textTheme.bodyMedium,);
}

// SMALL BOLD - PARRAFO
Widget texto03(BuildContext context, String title, {TextAlign textAlign = TextAlign.center, Color? color}) {
    return Text(title, textAlign: textAlign, style: TextStyle(
      fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize, fontWeight: FontWeight.bold,
      color: color
      ),
    );
}

Widget richtext02(BuildContext context, List<TextSpan> children) {
    return RichText( textAlign: TextAlign.center,
        text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: children,
      )
    );
  }