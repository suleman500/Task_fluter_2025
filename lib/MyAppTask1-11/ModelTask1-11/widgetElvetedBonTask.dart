import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/Model_Photo&Qusion.dart';

class WidgetElvetedBonTask extends StatefulWidget {
  VoidCallback onPressPhoto;
  String Chois;
  VoidCallback? Incrr;
  int? sc;
  WidgetElvetedBonTask({
    required this.onPressPhoto,
    required this.Chois,
    this.Incrr,
    this.sc,
  });

  @override
  State<WidgetElvetedBonTask> createState() => _WidgetElvetedBonTaskState();
}

class _WidgetElvetedBonTaskState extends State<WidgetElvetedBonTask> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      
      child: Container(
        width:double.infinity ,
        child: ElevatedButton(
          
          onPressed: () {
            widget.onPressPhoto();
            widget.Incrr!();
            widget.sc;
          },
          child: Text(widget.Chois),
        ),
      ),
    );
  }
}
