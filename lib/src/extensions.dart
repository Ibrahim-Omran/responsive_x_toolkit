import 'package:flutter/material.dart';
import 'core.dart';


extension ResponsiveNum on num {
  double f(BuildContext context) => ResponsiveX.scale(context, toDouble());
  double s(BuildContext context) => ResponsiveX.scale(context, toDouble());
  double ic(BuildContext context) => ResponsiveX.scale(context, toDouble());


  double w(BuildContext context) =>
      MediaQuery.of(context).size.width * (this / 375);


  double h(BuildContext context) =>
      MediaQuery.of(context).size.height * (this / 812);


  double r(BuildContext context) => ResponsiveX.scale(context, toDouble());
}