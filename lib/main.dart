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

// class timer extends StatelessWidget {
//   const timer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(topLeft: Radius.circular(ScSize.radius_meduim),topRight : Radius.circular(ScSize.radius_meduim)
//         ),
//       ),
//       child: Column(
//         children: [
//           AutoSizeText("Moves : 16",style: ScFont.getH4(),minFontSize: ScFont.h4Min,),
//           AutoSizeText("",style: ScFont.getH1(),minFontSize: ScFont.h1Min,),
//           AutoSizeText("Moves : 16",style: ScFont.getH3(),minFontSize: ScFont.h3Min,),
//         ],
//       ),
//     );
//   }
// }