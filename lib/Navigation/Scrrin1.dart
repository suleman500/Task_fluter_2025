import 'package:flutter/material.dart';

class Scrrin1 extends StatefulWidget {
  @override
  State<Scrrin1> createState() => _Scrrin1State();
}

class _Scrrin1State extends State<Scrrin1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  
                  Navigator.of(context).pushReplacementNamed('routeScrrin2');
                },
                child: Text("data"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('routeScrrinHom');

                  // Navigator.of(context).pop();
                },
                child: Text("Bake"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
