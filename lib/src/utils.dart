import 'package:flutter/material.dart';
import 'extensions.dart';

class RXUtils {
// Common paddings
  static EdgeInsets paddingAll(BuildContext context, double value) =>
      EdgeInsets.all(value.x(context));


  static EdgeInsets paddingSymmetric(
      BuildContext context, double horizontal, double vertical) =>
      EdgeInsets.symmetric(
        horizontal: horizontal.x(context),
        vertical: vertical.x(context),
      );


// Rounded container decoration
  static BoxDecoration roundedBox(BuildContext context,
      {double radius = 12, Color? color}) =>
      BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(radius.x(context)),
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
      height: height.x(context),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding.x(context)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.x(context)),
          ),
        ),
        child: child,
      ),
    );
  }
}