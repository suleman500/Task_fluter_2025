import 'package:flutter/material.dart';

class Textformfildcosto extends StatelessWidget {
  String label1;
  String hint;
  IconData icon;
  IconData suff;
  Color enBorderColer;
  Color foBorder;

  Textformfildcosto({
    required this.label1,
    required this.hint,
    required this.icon,
    required this.suff,
    required this.enBorderColer,
    required this.foBorder,
    
  });

  final _fontJe=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key:_fontJe ,
      validator: (v) {
        if (v!.length < 8) {
          return "ppp";
        }
        return "nooo";
      },

      decoration: InputDecoration(
        label: Text(label1),
        helperText: hint,
        prefixIcon: Icon(icon),
        suffixIcon: Icon(suff),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enBorderColer),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: foBorder),
          
        ),
      ),
    );
  }
}
