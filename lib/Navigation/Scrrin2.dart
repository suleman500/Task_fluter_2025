import 'package:flutter/material.dart';

class Scrrin2 extends StatefulWidget {
  @override
  State<Scrrin2> createState() => _Scrrin2State();
}

class _Scrrin2State extends State<Scrrin2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('routeScrrinHom');
          },
          child: Text("data"),
        ),
      ),
    );
  }
}
