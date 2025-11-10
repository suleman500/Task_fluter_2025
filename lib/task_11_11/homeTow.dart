import 'package:flutter/material.dart';
import 'package:flutter_application_1/Task5_11/home5_11.dart';

class Hometow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),

      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(color: Colors.amberAccent),
            
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ListTile(
                    
                    title: Text("Ali"), 
                  
                  subtitle: Text("ASDFG@gmail.com")),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
