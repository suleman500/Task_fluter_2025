import 'package:flutter/material.dart';
import 'package:flutter_application_1/bitaMy/Models_bita/Lisetbita.dart';
import 'package:flutter_application_1/bitaMy/Models_bita/bitaButenModel.dart';

class homebita extends StatelessWidget {
  List<Butenbita> ooo = [
    Butenbita(
      onps: () {
        print("object");
      },
      icon: Icons.sailing,
    ),

    Butenbita(
      onps: () {
        print("object");
      },
      icon: Icons.sailing,
    ),

    Butenbita(
      onps: () {
        print("object");
      },
      icon: Icons.sailing,
    ),
  ];

  List<Lisetbita> Fu = [

Lisetbita(name: "Where is the car", Ful: [



Butenbita(
      onps: () {
        print("object");
      },
      icon: Icons.sailing,
    ),

    Butenbita(
      onps: () {
        print("object");
      },
      icon: Icons.sailing,
    ),

    Butenbita(
      onps: () {
        print("object");
      },
      icon: Icons.sailing,
    ),

])


    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
children: [




],

      ),
    );
  }
}
