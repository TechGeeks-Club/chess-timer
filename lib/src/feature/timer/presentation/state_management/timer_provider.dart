import 'dart:async';
import 'package:chess_timer/src/core/models/timer_model.dart';
import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier{
  
  late final TimerModel timerModel;
  
  late final Timer countdownTimer;
  late Duration myClock;
  bool timeEnd = false;
  Duration alreadyAdded = const Duration(seconds: 0);

  
  TimerProvider({required this.timerModel}){
    myClock = timerModel.totalTime;
  }

  void startTimer(){

    //? to add the seconds before each start
    if(timerModel.totalTime.inSeconds != myClock.inSeconds && alreadyAdded.inSeconds < timerModel.totalAddedTime.inSeconds){
      int newTime = myClock.inSeconds + timerModel.addedTime.inSeconds;
      myClock=Duration(seconds: newTime);
      alreadyAdded = Duration(seconds: alreadyAdded.inSeconds + timerModel.addedTime.inSeconds);
      notifyListeners();
    }
    
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {setCountDown();});
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    final seconds = myClock.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      timeEnd = true;
      stopTimer();
    } else {
      myClock = Duration(seconds: seconds);
    }
    notifyListeners();
  }

  void stopTimer(){
    countdownTimer.cancel();
    notifyListeners();
  }
  
}