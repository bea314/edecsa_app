import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive {
  late double width, height, inch;

  Responsive (BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final screenSize = mediaQuery.size;
    width = screenSize.width;
    height = screenSize.height;
    inch = math.sqrt(math.pow(width, 2) + math.pow(height, 2));
    // ScreenUtil.init(BoxConstraints(maxWidth: width, maxHeight: height), context: context);
    ScreenUtil.init(context, designSize: Size(width, height),
      minTextAdapt: true, splitScreenMode: false,);
  }

  double wp(double percent) => (width  * percent / 100);
  double hp(double percent) => (height * percent / 100);
  double ip(double percent) => (inch   * percent / 100);
  double sp(double fontSize) => ScreenUtil().setSp(fontSize);
}