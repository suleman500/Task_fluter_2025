import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyAppTask1-11/Data/data7.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/Model_Photo&Qusion.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/PhotoAndElevted.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/costmBodtWdg.dart/CoBody.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/cstmWdgAbbar.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/modelEL.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/widgetElvetedBonTask.dart';
import 'package:flutter_application_1/quezApp/Modele/qusion_model.dart';
import 'ModelTask1-11/cstmWdgAbbar.dart';


class Homtask1_11 extends StatefulWidget {
  @override
  State<Homtask1_11> createState() => _Homtask1_11State();
}

class _Homtask1_11State extends State<Homtask1_11> {
 

  @override
  Widget build(BuildContext context) {
    return 
      
       Scaffold(
        appBar: AppBar(title: Cstmwdgabbar(),),
        
backgroundColor: Color(0xFF10B981),
        body:Cobody(),
      );
    
  }
}
