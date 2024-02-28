import 'package:flutter/material.dart';

class ScFont{
  
  static const color_1 = Color(0xFF6490ff);
  static const color_2 = Colors.white;

  static double get h1Min => 30-8;
  static double get h2Min => 21-8;
  static double get h3Min => 18-8;
  static double get h4Min => 14-8;
  
  static TextStyle getH1({String fontFamily="Poppins", double size=30 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );

  static TextStyle getH2({String fontFamily="Poppins", double size=21 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );
  static TextStyle getH3({String fontFamily="Poppins", double size=18 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );
  static TextStyle getH4({String fontFamily="Poppins", double size=14 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );
}
