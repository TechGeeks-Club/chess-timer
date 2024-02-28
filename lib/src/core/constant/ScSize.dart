import 'package:flutter/material.dart';

class ScSize {

  static double getHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static const double radius_big = 30;
  static const double radius_meduim = 39;
  static const double radius_small = 8;

}