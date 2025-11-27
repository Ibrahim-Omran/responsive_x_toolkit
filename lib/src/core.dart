import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'breakpoints.dart';


class ResponsiveX {
// Scale factors
  static const double mobileScale = 0.90;
  static const double tabletScale = 1.05;
  static const double desktopScale = 1.15;
  static const double largeDesktopScale = 1.22;


  static double scale(BuildContext context, double base) {
    final width = MediaQuery.of(context).size.width;
    final density = MediaQuery.of(context).devicePixelRatio;


    double factor;


    if (width >= RXBreakpoints.largeDesktop) {
      factor = largeDesktopScale;
    } else if (width >= RXBreakpoints.desktop) {
      factor = desktopScale;
    } else if (width >= RXBreakpoints.tablet) {
      factor = tabletScale;
    } else {
      factor = mobileScale;
    }


    final widthRatio = (width / 375).clamp(0.85, 1.35);


    double finalScale = factor * widthRatio;


    final minValue = density > 2 ? density * 0.70 : 8.0;


    return math.max(base * finalScale, minValue);
  }
}