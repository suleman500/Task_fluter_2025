import 'package:flutter/material.dart';
import 'package:flutter_application_1/quezApp/Modele/modelAnser.dart';
import 'package:flutter_application_1/quezApp/Modele/qusion_model.dart';

import 'Modele/ansermodel.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indix = 0;

  @override
  Widget build(BuildContext context) {
    List<Ansermodel> asd = [
      Ansermodel(
        answer1: "ddd1",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "ddd1",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "ddd1111",
        onPress: () {
          print("object");
        },
      ),
    ];

    List<QusionModel> qusion = [
      QusionModel(question: "hlooo",ListOfAnser: [

 Ansermodel(
        answer1: "88888888888888888888888",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "9999999999999999999999999999",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "777777777777777777777777777",
        onPress: () {
          print("object");
        },
      ),
        

      ]),
      

      QusionModel(question: "yoooooo",ListOfAnser: 
      [

 Ansermodel(
        answer1: "ddd1",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "ddd1",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "ddd1111",
        onPress: () {
          print("object");
        },
      ),



      ]),

      QusionModel(question: "question",ListOfAnser: [


 Ansermodel(
        answer1: "dddddddd",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "ttttttttt",
        onPress: () {
          print("object");
        },
      ),
      Ansermodel(
        answer1: "qqqqqqqqqqqq",
        onPress: () {
          print("object");
        },
      ),





      ]),
    ];

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(qusion[indix].question),

            Column(
              children:
                  qusion[indix].ListOfAnser
                      .map(
                        (e) => Anser(
                          answer: e,
                          incres: () {
                            setState(() {
                              if (indix != qusion.length-1) {
                                indix++;
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
