import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyAppTask1-11/Data/data7.dart';
import 'package:flutter_application_1/MyAppTask1-11/ModelTask1-11/widgetElvetedBonTask.dart';

class Cobody extends StatefulWidget {
  @override
  State<Cobody> createState() => _CobodyState();
}

class _CobodyState extends State<Cobody> {
  int index = 0;

  int scor = 0;

  int s = 0;

  Color? b;
  int bulnse = 1;

  bool f = false;
  int netScore = QusionPhoto.length * 5;

  vGoTo() {
    setState(() {
      if (index < QusionPhoto.length - 1) {
        index++;
        scor += 5;
      } else {
        f = true;
      }
    });
  }

  bool o = true;
  chek() {
    setState(() {
      index = 0;
      scor = 0;
      if (bulnse <= 3) {
        NBulnse();
      } else {
        
        o = false;
      }
    });
  }

  NBulnse() {
    setState(() {
      bulnse += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child:
            f && o
                ? Column(
                  children: [
                    Text(
                      "fainal Quzei",
                      style: TextStyle(fontSize: 50, color: Color(0xFF374151)),
                    ),
                    Text(
                      "Yor Scor$scor",
                      style: TextStyle(fontSize: 20, color: Color(0xFF374151)),
                    ),

                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Icon(Icons.check_circle),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          f = false;
                          chek();
                        });
                      },
                      label: Icon(Icons.restore_outlined),
                    ),
                  ],
                )
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QusionPhoto[index].Photos,

                    Column(
                      children: [
                        Column(
                          children:
                              QusionPhoto[index].VoiPhoto
                                  .map(
                                    (e) => WidgetElvetedBonTask(
                                      Chois: e.Chois,
                                      sc: bulnse,
                                      onPressPhoto: () {
                                        vGoTo();
                                      },
                                    ),
                                  )
                                  .toList(),

                          //for (var button in QusionPhoto[index].VoiPhoto) button,
                        ),
                        Text(
                          "Scor:$scor ",
                          style: TextStyle(color: Color(0xFF45FC88)),
                        ),
                        Text(
                          "Allowed attempte:$bulnse/4 ",
                          style: TextStyle(color: Color(0xFF45FC88)),
                        ),
                      ],
                    ),
                  ],
                ),
      ),
    );
  }
}
