import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mieet_11_12/homMeet.dart';
import 'package:flutter_application_1/Mieet_11_12/homeMieet.dart';
import 'package:flutter_application_1/MyAppTask1-11/homTask1-11.dart';
import 'package:flutter_application_1/Navigation/Scrrin1.dart';
import 'package:flutter_application_1/Navigation/Scrrin2.dart';
import 'package:flutter_application_1/Navigation/homNavi.dart';
import 'package:flutter_application_1/Task11_15/home_15_11.dart';
import 'package:flutter_application_1/Task11_17/home_login.dart';
import 'package:flutter_application_1/Task5_11/home5_11.dart';
import 'package:flutter_application_1/TaskStak/homeTaSt.dart';
import 'package:flutter_application_1/bitaMy/My_homebita.dart';
import 'package:flutter_application_1/mineGamse/gamesXandO.dart';
import 'package:flutter_application_1/quezApp/home.dart';
import 'package:flutter_application_1/task_11_11/home.dart';
import 'package:flutter_application_1/task_11_11/homeThrie.dart';
import 'package:flutter_application_1/task_11_11/homeTow.dart';
import 'package:flutter_application_1/tisetViwe/tist.dart';




void main() {
  runApp(MyAppState());
}



class MyAppState extends StatefulWidget {
  @override
  State<MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  HomeLogin(),debugShowCheckedModeBanner: false,
   
    );
  }
}






























