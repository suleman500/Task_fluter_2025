import 'package:flutter/material.dart';

class ModelNum {
  String n;
  ModelNum({required this.n});
}

class NameAndPhot {
  IconData pho;
  String vnam;
  NameAndPhot({ this.pho= Icons.person_outline_sharp,required this.vnam});
}
 
 List<NameAndPhot> nnn=[

NameAndPhot(vnam: "ALI"),
NameAndPhot(vnam: "Morad"),
NameAndPhot(vnam: "Suleman"),


 ];