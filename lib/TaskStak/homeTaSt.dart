import 'package:flutter/material.dart';
import 'package:flutter_application_1/TaskStak/model.dart';

class Hometast extends StatelessWidget {
  @override
  List<ModelNum> nmber = [
    ModelNum(n: "1"),
    ModelNum(n: "2"),
    ModelNum(n: "3"),
    ModelNum(n: "4"),
    ModelNum(n: "5"),
    ModelNum(n: "6"),
    ModelNum(n: "7"),
    ModelNum(n: "5"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [

          phtoAndText()
         
        ],
      ));
  }

  Widget num(BuildContext contex, ModelNum o) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black45,
        child: Center(
          child: Text(o.n, style: TextStyle(color: Colors.black26)),
        ),
      ),
    );
  }

  Widget ppp() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: nmber.length,
        itemBuilder: (context, index) {
          return num(context, nmber[index]);
        },
      ),
    );
  }

  Widget phtoAndText() {
    return Center(
      child: Container(
        width: 15,
        height: 20,
        child: Column(children: [Icon(Icons.people), Text("ali")]),
      ),
    );
  }
}
