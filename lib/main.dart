import 'package:chess_timer/src/core/models/timer_model.dart';
import 'package:chess_timer/src/feature/timer/presentation/state_management/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => TimerProvider(timerModel: TimerModel(totalTime: const Duration(minutes: 1,seconds: 10),totalAddedTime: const Duration(seconds: 40) , addedTime: const Duration(seconds: 5))),
      child: MaterialApp(
      home: Scaffold(
        body: Consumer<TimerProvider>(
          builder: (context, time, child) => Column(
            children: [
              Text("${time.myClock.inMinutes} :  ${time.myClock.inSeconds%60}"),
              GestureDetector(
                onTap: (){
                  time.startTimer();
                },
                child: Container(
                  height: 50,
                  width: 400,
                  color: Colors.lightBlue,
                  child: const Text("Start"),
                ),
              ),
              GestureDetector(
                onTap: (){
                  time.stopTimer();
                },
                child: Container(
                  color: Colors.orangeAccent,
                  height: 50,
                  width: 400,
                  child: const Text("Stop"),
                ),
              )
            ],
          )
        ),
      ),
    )
    );
  }
}