import 'package:flutter/material.dart';

class Tist extends StatelessWidget {
  @override
  List<oo> ff = [
    oo(p: "aaaaa", l: "bbbbbbbbb"),
    oo(p: "aaaaa", l: "bbbbbbbbb"),
    oo(p: "aaaaa", l: "bbbbbbbbb"),
    oo(p: "aaaaa", l: "bbbbbbbbb"),
    oo(p: "aaaaa", l: "bbbbbbbbb"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ff.length,
        itemBuilder: (context, index) {
          return text(context, ff[index]);
        },
      ),
    );
  }

  Widget text(BuildContext context, oo o) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blueGrey,
          child: Column(
            children: [
              Text(o.l,),
              Text(o.p,),
            ],
          ),
        ),
      ),
    );
  }
}

class oo {
  String p;
  String l;
  oo({required this.p, required this.l});
}
