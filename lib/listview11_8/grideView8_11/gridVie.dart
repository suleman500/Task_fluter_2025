import 'package:flutter/material.dart';

class Gridvie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //  ما يصير عندي اي مشكله حتى لو قلبت الشاشه
      body: GridView.extent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 10,

        // بحل مشكلت السكرول  
        //physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 10,
        // خليه اكبر بمرتين من العرض خليه مستطيل
        childAspectRatio: 0.2,
        children: [
          costemcontener("data"),
          costemcontener("data"),
          costemcontener("data"),
          costemcontener("data"),
          costemcontener("data"),
          costemcontener("data"),
        ],
      ),
    );
  }

  Widget costemcontener(String data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(child: Center(child: Text(data)), color: Colors.amber),
    );
  }
}


















/*
class Gridvie  extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

// برتبهم 
body: SafeArea(child: GridView.count(crossAxisCount: 2,


children: [


costemcontener("data"),
costemcontener("data"),
costemcontener("data"),
costemcontener("data"),
costemcontener("data"),
costemcontener("data"),




],)),



    );



    
  }


Widget costemcontener(String data){

return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
  child: Center(child:  Text(data),),
  
  color: Colors.amber,
  
  ),
);
}
}*/