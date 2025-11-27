import 'package:flutter/material.dart';

class ResponsiveBreakpoints {
  final double mobile;
  final double tablet;
  final double desktop;
  final double largeDesktop;

  const ResponsiveBreakpoints({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.largeDesktop,
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
      mobile: 480,
      tablet: 768,
      desktop: 1024,
      largeDesktop: 1440,
    ),
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < breakpoints.tablet) return mobile;
    if (width < breakpoints.desktop) return tablet;
    if (width < breakpoints.largeDesktop) return desktop;
    return largeDesktop;
  }
}
