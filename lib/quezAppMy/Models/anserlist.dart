import 'package:flutter/material.dart';
import 'package:flutter_application_1/quezAppMy/Models/anser.dart';

class AnserButn extends StatelessWidget {
  Anser7 sfdss;
  VoidCallback incremnt;
  VoidCallback scorss;

  AnserButn({
    required this.sfdss,
    required this.incremnt,
    required this.scorss,
  });

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(),
          onPressed: () {
            
            incremnt();
            scorss();
      
            sfdss.onPress9;
            
          },
          child: Text(sfdss.anser9, style: TextStyle(color: Colors.purple)),
        ),
      ),
    );
  }
}
