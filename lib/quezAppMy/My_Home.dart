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
  int scor = 0;

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
    int netScor = quion.length * 5;
    bool endFquiz = scor == netScor;

    return Scaffold(
      appBar: AppBar(
        title: Text("Quez App"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      backgroundColor: Color(0xCD54009a),
      body: Center(
        child: endFquiz
            ? Card(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.7,
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Column(
                    children: [
                      Icon(Icons.access_time_sharp),
                      Text("End"),
                      Text(
                        "Your scor :${scor}",
                        style: TextStyle(color: Color(0xCDccde10)),
                      ),
                      SizedBox(height: 80),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            scor = 0;
                            indix = 0;
                          });
                        },
                        child: Text(
                          "Reset quiz",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
Text("Fainal Qusions"),
Icon(Icons.question_mark)

                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(quion[indix].qusion9, style: TextStyle(fontSize: 30)),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: quion[indix]
                            .listOf
                            .map(
                              (e) => AnserButn(
                                sfdss: e,
                                incremnt: () {
                                  setState(() {
                                    if (indix != quion.length - 1) {
                                      indix++;
                                      //scor++;
                                    }
                                    //else {
                                    // indix--;
                                    // }
                                  });
                                },
                                scorss: () => setState(() {
                                  if (scor != netScor) {
                                    scor += 5;
                                  }
                                }),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Scor:$scor",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}