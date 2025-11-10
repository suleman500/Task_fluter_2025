import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyAppTask1-11/homTask1-11.dart';
import 'package:flutter_application_1/Task5_11/home5_11.dart';
import 'package:flutter_application_1/TaskStak/homeTaSt.dart';
import 'package:flutter_application_1/bitaMy/My_homebita.dart';
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
    return MaterialApp(home:  Homethrie  (),debugShowCheckedModeBanner: false,
    
    );
  }
}






























