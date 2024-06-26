import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeProv with ChangeNotifier {
  String _greet = '';
  // String get greet => _greet;
  String setGreet() {
    int hour = DateTime.now().hour;
    int minutes = DateTime.now().minute;

    if (hour > 5 && hour < 12) {
      _greet = 'Good Morning';
    }
    else if(hour>=12 && hour<14 && minutes<30){
      _greet = 'Good Noon';
    }
      else if(hour>=14 &&minutes>30 && hour<17){
      _greet = 'Good AfterNoon';
    }
       else if(hour>=17&& hour<20){
      _greet = 'Good Evening';
    }
      else {
      _greet = 'Good Night';
    }
    return _greet;
  }
}
