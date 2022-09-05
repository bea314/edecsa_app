import 'package:flutter/material.dart';
import 'package:edecsa_app/includes/utils/utils.dart';

Widget titulo01(BuildContext context, String title) {
    final responsive = Responsive(context);
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline1,);
}

Widget titulo02(BuildContext context, String title) {
    final responsive = Responsive(context);
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2,);
}

Widget texto01(BuildContext context, String title) {
    final responsive = Responsive(context);
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,);
}

Widget texto02(BuildContext context, String title) {
    final responsive = Responsive(context);
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText2,);
}
