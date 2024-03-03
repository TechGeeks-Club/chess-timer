import 'package:auto_size_text/auto_size_text.dart';
import 'package:chess_timer/src/core/constant/sc_font.dart';
import 'package:chess_timer/src/core/constant/sc_size.dart';
import 'package:chess_timer/src/screens/home/pages/home_screen.dart';
import 'package:chess_timer/src/screens/home/pages/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
