import 'package:auto_size_text/auto_size_text.dart';
import 'package:chess_timer/src/core/constant/sc_color.dart';
import 'package:chess_timer/src/core/constant/sc_font.dart';
import 'package:chess_timer/src/core/constant/sc_size.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScColor.color_bg,
      body: Column(
        children: [
          Row(
            children: [
              AutoSizeText("First username",style: ScFont.getH4(color: ScColor.color_2),),
              Input(controller: TextEditingController()),
            ],
          ),
          Row(
            children: [
              AutoSizeText("First username",style: ScFont.getH4(color: ScColor.color_2),),
              Input(controller: TextEditingController()),
            ],
          ),
          Row(
            children: [
              AutoSizeText("First username",style: ScFont.getH4(color: ScColor.color_2),),
              Input(controller: TextEditingController()),
            ],
          ),
        ],
      ),
    );
  }
}

class Input extends StatefulWidget {
  final Widget? label;
  final bool Function(String)? validation;
  final TextEditingController controller;

  const Input({super.key, this.label, this.validation, required this.controller});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  
  String? error ;
  
  @override
  Widget build(BuildContext context) {
    return Container(
              width: ScSize.getWidth(context)*0.8,
              height: ScSize.getHeight(context)*0.09,
              decoration: BoxDecoration(
                color: ScColor.color_2.withOpacity(0.55),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: TextField(
                  controller: widget.controller,
                  onChanged: (value){
                    if(widget.validation != null){
                      error = widget.validation!(value) ? null : "Error"; 
                      setState(() {});
                    }
                  },
                  decoration: InputDecoration(
                    errorText: error,
                    label : widget.label,
                      border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: ScFont.color_1,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            );
  }
}