import 'package:chess_timer/src/core/constant/ScSize.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = ScSize.getWidth(context);
    double maxHeight = ScSize.getHeight(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: maxHeight,
            width: maxWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: maxHeight,
            width: maxWidth,
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF005FD0).withOpacity(0.4),
                  Colors.black.withOpacity(0.4),
                ],
              ),
              backgroundBlendMode: BlendMode.overlay
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 54),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image of the logo
                Image.asset(
                  'images/logo.png',
                  height: maxHeight * 0.35,
                  width: maxWidth * 0.45,
                ),
                // Text of copyright
                const Column(
                  children: [
                    Text(
                      'Created by Mrah Amdjed & Kolli Adem',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSerif',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'For TechGeeks Club',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSerif',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
                        ),
            ),
          ),
          
        ] 
      ),
    );
  }
}