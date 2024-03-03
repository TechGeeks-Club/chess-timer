import 'package:chess_timer/src/core/models/timer_model.dart';
import 'package:chess_timer/src/core/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {

  late UserModel user1;
  late UserModel user2;
  late TimerModel gameTimer;
  HomeProvider({required this.user1,required this.user2, required this.gameTimer});

  String lastUserPlayed = "user1";

  void setUsername({String? username1 , String? username2}){
    user1.username = username1?? user1.username;
    user2.username = username2?? user2.username;
    notifyListeners();
  }

  void setGameTimer({required TimerModel newTimer}){
    gameTimer=newTimer;
    notifyListeners();
  }
  
}