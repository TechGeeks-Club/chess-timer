import 'package:auto_size_text/auto_size_text.dart';
import 'package:chess_timer/src/core/constant/sc_color.dart';
import 'package:chess_timer/src/core/constant/sc_font.dart';
import 'package:chess_timer/src/core/constant/sc_size.dart';
import 'package:flutter/material.dart';

class UserBox extends StatelessWidget {
  const UserBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  
    final height = ScSize.getHeight(context);

    return Container(
      // height: height*0.4,
      decoration: BoxDecoration(
        
        color: ScColor.color_1,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(ScSize.radius_meduim),topRight: Radius.circular(ScSize.radius_meduim)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: height*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AutoSizeText("Moves : 16",style: ScFont.getH4(),minFontSize: ScFont.h4Min,maxLines: 1),
            AutoSizeText("05:22",style: ScFont.getH1(),minFontSize: ScFont.h1Min,maxLines: 1),
            AutoSizeText("User 1",style: ScFont.getH3(),minFontSize: ScFont.h3Min,maxLines: 1),
          ],
        ),
      ),
    );
  }
}