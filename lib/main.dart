import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyAppTask1-11/homTask1-11.dart';
import 'package:flutter_application_1/bitaMy/My_homebita.dart';
import 'package:flutter_application_1/quezApp/home.dart';
import 'package:flutter_application_1/quezAppMy/My_Home.dart';



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
    return MaterialApp(home:  Homtask1_11(),debugShowCheckedModeBanner: false,
    
    );
  }
}






























