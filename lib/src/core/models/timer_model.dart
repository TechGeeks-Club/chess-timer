class TimerModel {
  late final Duration totalTime;
  late final Duration addedTime ;
  late final Duration totalAddedTime;

  // Duration decrementBy = const Duration(seconds: 1);  

  TimerModel({required int totalTimeInMinutes , required int addedTimeInMinutes , required int totalAddedTimeInMinutes}){
    totalTime = Duration(minutes: totalTimeInMinutes);
    totalAddedTime = Duration(minutes: totalAddedTimeInMinutes);
    addedTime = Duration(minutes: addedTimeInMinutes);
  }
  
}