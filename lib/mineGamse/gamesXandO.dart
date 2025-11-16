import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  List<ModelXandO> butonStat = [
    ModelXandO(),

    ModelXandO(),
    ModelXandO(),
    ModelXandO(),
    ModelXandO(),

    ModelXandO(),
    ModelXandO(),
    ModelXandO(),
    ModelXandO()
  ];
  @override
  Widget build(BuildContext context) {
    String s = "";
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 9,

        itemBuilder: (context, index) {
          return gemss(context, index,);
        },
      ),
    );
  }

  Widget gemss(BuildContext context, int index,) {
    return Container(
      color: Colors.amberAccent,
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              //  عشان اطبع او ل قيمه بقارن و طبع يا  o يا x ومش رح يطبع اذا اكن واحد جواته قيمه 
              if (butonStat[index].X == null &&
                  butonStat[index].O == null) {
                butonStat[index] = ModelXandO(X: "X");


              }
              
              //  اذا فيه قيمه  اطبع وذا
              //
               else if (butonStat[index].X != null) {
                butonStat[index] = ModelXandO(O: "O");

              }
              
              // هون  برجع افاضيه عشان ارجع اطبع x
              //  مطلعها لما يكون كلشي فاضي من الشرط الاول 
              
               else {
                butonStat[index] = ModelXandO();
              }
            });
          },
          child: Text(butonStat[index].X??butonStat[index].O??"ضغط")
        ),
      ),
    );
  }
}

class ModelXandO {
  String? O;
  String? X;
  ModelXandO({this.O, this.X});
}
