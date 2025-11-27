import 'package:flutter/material.dart';
import 'extensions.dart';


// Small utilities helpful across projects


class RXUtils {
// Common paddings
  static EdgeInsets paddingAll(BuildContext context, double value) =>
      EdgeInsets.all(value.s(context));


  static EdgeInsets paddingSymmetric(
      BuildContext context, double horizontal, double vertical) =>
      EdgeInsets.symmetric(
        horizontal: horizontal.s(context),
        vertical: vertical.s(context),
      );


// Rounded container decoration
  static BoxDecoration roundedBox(BuildContext context,
      {double radius = 12, Color? color}) =>
      BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(radius.r(context)),
      );


// Simple responsive sized button
  static Widget responsiveButton(
      BuildContext context, {
        required Widget child,
        required VoidCallback onTap,
        double height = 48,
        double horizontalPadding = 16,
      }) {
    return SizedBox(
      height: height.h(context),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding.s(context)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r(context)),
          ),
        ),
        child: child,
      ),
    );
  }
}