import 'package:flutter/material.dart';

class ModelPhotoQusion extends StatelessWidget {
  String Photo;

  ModelPhotoQusion({required this.Photo});

  String NamePhoto="What is in the picture?";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Color(0xFF8B5CF6)),borderRadius: BorderRadius.circular(15)),
      child: Column(
      
        children: [
      Text(NamePhoto),
      
          Padding(
            
            padding: const EdgeInsets.all(8.0),
            child:Image.asset(Photo),
          ),
        ],
      ),
    );
  }
}
