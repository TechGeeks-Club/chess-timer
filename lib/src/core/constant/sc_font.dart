import 'package:flutter/material.dart';

class ScFont{
  
  static const Color color_1 = Colors.black;
  static Color color_2 = const Color(0xFF626262).withOpacity(0.6);

  static double get h1Min => 96-8;
  static double get h2Min => 21-8;
  static double get h3Min => 32-8;
  static double get h4Min => 16-8;
  
  static TextStyle getH1({String fontFamily="NotoSerif", double size=96 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );

  static TextStyle getH2({String fontFamily="NotoSerif", double size=21 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );
  static TextStyle getH3({String fontFamily="NotoSerif", double size=32 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );
  static TextStyle getH4({String fontFamily="NotoSerif", double size=16 ,FontWeight fontWeight = FontWeight.bold , Color color=color_1}) =>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: size,
    color: color
  );
}
