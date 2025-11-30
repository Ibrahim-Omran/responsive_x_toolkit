import 'package:flutter/material.dart';

class ResponsiveBreakpoints {
  final double mobile;
  final double tablet;
  final double maxDesktopWidth;
  final double standardDesktopWidth;

  const ResponsiveBreakpoints({
    required this.mobile,
    required this.tablet,
    required this.maxDesktopWidth,
    required this.standardDesktopWidth,
  });
}

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile, tablet, desktop, largeDesktop;
  final ResponsiveBreakpoints breakpoints;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.largeDesktop,
    this.breakpoints = const ResponsiveBreakpoints(
      mobile: 375.0,
      tablet: 768.0,
      maxDesktopWidth: 1920.0,
      standardDesktopWidth: 1024.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < breakpoints.tablet) return mobile;
    if (width < breakpoints.standardDesktopWidth) return tablet;
    if (width < breakpoints.maxDesktopWidth) return desktop;
    return largeDesktop;
  }
}
