import 'package:flutter/material.dart';
import 'breakpoints.dart';


/// ResponsiveLayout: تختار بين ثلاث واجهات (mobile/tablet/desktop)
/// Usage:
/// ResponsiveLayout(
/// mobile: MobileWidget(),
/// tablet: TabletWidget(),
/// desktop: DesktopWidget(),
/// )


class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? largeDesktop;


  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.largeDesktop,
  });


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;


    if (width >= RXBreakpoints.largeDesktop && largeDesktop != null) {
      return largeDesktop!;
    }


    if (width >= RXBreakpoints.desktop && desktop != null) {
      return desktop!;
    }


    if (width >= RXBreakpoints.tablet && tablet != null) {
      return tablet!;
    }


// fallback
    return mobile;
  }
}