import 'package:flutter/material.dart';
import 'package:flutter_application_1/quezAppMy/Models/anser.dart';

class AnserButn extends StatelessWidget {
  Anser7 sfdss;
  VoidCallback incremnt;

  AnserButn({required this.sfdss, required this.incremnt});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: double.infinity,
      child: ElevatedButton(
        
        onPressed: () {
          incremnt();
          sfdss.onPress9;
        },
        child: Text(sfdss.anser9,style:TextStyle(color: Colors.blue,)),
      ),
    );
  }
}
