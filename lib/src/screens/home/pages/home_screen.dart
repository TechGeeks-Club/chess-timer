import 'package:auto_size_text/auto_size_text.dart';
import 'package:chess_timer/src/core/constant/sc_color.dart';
import 'package:chess_timer/src/core/constant/sc_font.dart';
import 'package:chess_timer/src/core/constant/sc_size.dart';
import 'package:chess_timer/src/screens/home/widgets/user_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final height = ScSize.getHeight(context);
    // final width = ScSize.getWidth(context);

    return Scaffold(
      backgroundColor: ScColor.color_bg ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: RotatedBox(
              quarterTurns: -2,
              child: UserBox()),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.05),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.more_vert_rounded,color: ScColor.color_2,size: 42,),
                Icon(Icons.pause_rounded,color: ScColor.color_2,size: 42),
                Icon(Icons.replay_rounded,color: ScColor.color_2,size: 42),
              ],
            ),
          ),
          const Expanded(child: UserBox()),
        ],
      ),
    );
  }
}
