import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'breakpoints.dart';


class ResponsiveX {
  // Scaling factors for different screen sizes
  static const double maxDesktopScale = 1.2;

  static const double desktopScale = 1.1;

  static const double tabletScale = 1.05;

  static const double mobileScale = 0.9;



  static double scaleSize(BuildContext context, double baseSize) {

    double screenWidth = MediaQuery.sizeOf(context).width;

    double pixelDensity = MediaQuery.devicePixelRatioOf(context);

    double scaleFactor;



    if (screenWidth >= RXBreakpoints.maxDesktopWidth) {

      scaleFactor = (screenWidth / RXBreakpoints.maxDesktopWidth) * maxDesktopScale;

    } else if (screenWidth >= RXBreakpoints.standardDesktopWidth) {

      scaleFactor = (screenWidth / RXBreakpoints.maxDesktopWidth) * desktopScale;

    } else if (screenWidth >= RXBreakpoints.tabletBreakpoint) {

      scaleFactor = (screenWidth / RXBreakpoints.standardDesktopWidth) * tabletScale;

    } else {

      scaleFactor = (screenWidth / RXBreakpoints.mobileBreakpoint) * mobileScale;

    }



    // Ensuring the scale remains within a reasonable range

    scaleFactor = scaleFactor.clamp(0.8, 1.4);



    // Final size calculation with pixel density adjustment

    return math.max((baseSize * scaleFactor), (pixelDensity > 2 ? pixelDensity * 0.75 : 8.0));

  }
}


