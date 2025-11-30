import 'package:flutter/material.dart';
import 'core.dart';


extension ResponsiveNum on num {

  double x(BuildContext context) => ResponsiveX.scaleSize(context, toDouble());
}

extension ResponsiveContext on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < 768;
  bool get isTablet =>
      MediaQuery.of(this).size.width >= 768 && MediaQuery.of(this).size.width < 1024;
  bool get isDesktop => MediaQuery.of(this).size.width >= 1024;
}