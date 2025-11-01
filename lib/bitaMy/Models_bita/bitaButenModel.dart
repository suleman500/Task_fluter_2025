import 'package:flutter/material.dart';

class Butenbita extends StatelessWidget {
  VoidCallback onps;
  IconData icon;
  Butenbita({required this.onps, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        onps();
      },
      label: Icon(icon),
    );
  }
}
