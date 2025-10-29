import 'package:flutter/material.dart';
import 'package:flutter_application_1/quezApp/Modele/modelAnser.dart';
import 'package:flutter_application_1/quezAppMy/Models/anser.dart';
import 'package:flutter_application_1/quezAppMy/Models/anserlist.dart';
import 'package:flutter_application_1/quezAppMy/Models/qusion9.dart';

class Myhome extends StatefulWidget {
  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  int indix = 0;

  @override
  Widget build(BuildContext context) {
    List<Anser7> AnserList = [
      Anser7(
        onPress9: () {
          print("object");
        },
        anser9: "data",
      ),

      Anser7(
        onPress9: () {
          print("object");
        },
        anser9: "sssssss",
      ),

      Anser7(
        onPress9: () {
          print("object");
        },
        anser9: "data",
      ),
    ];

    List<Qusion9> quion = [
      Qusion9(
        qusion9: "your favorite team",
        listOf: [
          Anser7(
            onPress9: () {
              print("object");
            },
            anser9: "AlNasser",
          ),
          Anser7(
            onPress9: () {
              print("object");
            },
            anser9: "RealMadred",
          ),
          Anser7(
            onPress9: () {
              print("object");
            },
            anser9: "AlFaisaly",
          ),
        ],
      ),

      Qusion9(
        qusion9: "your favorite Player",
        listOf: [
          Anser7(
            onPress9: () {
              print("CR7");
            },
            anser9: "CR7",
          ),
          Anser7(
            onPress9: () {
              print("999999");
            },
            anser9: "Meiss10",
          ),
          Anser7(
            onPress9: () {
              print("object");
            },
            anser9: "Myyy",
          ),
        ],
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Text(quion[indix].qusion9,style: TextStyle(fontSize: 30),),

          Column(
            children:
                quion[indix].listOf
                    .map(
                      (e) => AnserButn(
                        sfdss: e,
                        incremnt: () {
                          setState(() {
                            if (indix != quion.length - 1) {
                              indix++;
                            } else {
                              indix--;
                            }
                          });
                        },
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}
