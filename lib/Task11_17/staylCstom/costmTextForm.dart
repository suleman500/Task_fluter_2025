import 'package:flutter/material.dart';
import 'package:flutter_application_1/Task5_11/home5_11.dart';

class Costmtextform extends StatelessWidget {
  IconData iconss;
  bool? chik;
  String name;
  String helperr;
  Function(String)? onCHanged;

  Costmtextform({
    required this.iconss,
    this.chik,
    required this.name,
    this.onCHanged,
    this.helperr=""
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          hint: Text(name),
          helper: Text(helperr),
          suffixIcon: Icon(iconss),

          border: OutlineInputBorder(),
          filled: chik,

          alignLabelWithHint: false,
        ),
        onChanged: onCHanged,
      ),
    );
  }
}
