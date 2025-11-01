import 'package:flutter/material.dart';

class Cstmwdgabbar extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    
    return 
      AppBar(
      
      
            backgroundColor: Color(0xFF10B990),
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Queze Photo", style: TextStyle(color: Colors.black)),
                Icon(Icons.photo),
              ],
            ),
          );
    
        

  
  }


}