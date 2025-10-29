import 'package:flutter/material.dart';
import 'package:flutter_application_1/quezApp/Modele/ansermodel.dart';

class Anser extends StatelessWidget {
  Ansermodel answer;
  VoidCallback incres;
  Anser({required this.answer, required this.incres});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          incres();
          answer.onPress;
        },
        child: Text(answer.answer1),
      ),
    );
  }
}
