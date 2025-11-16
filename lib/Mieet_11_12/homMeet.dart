import 'package:flutter/material.dart';

class Hommeet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.amber),

          Positioned.fill(
            top: 180,

            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                

              ),
              child: Column(

                children: [



                  
                  SizedBox(height: 100,),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
                    
                       
                      
                      itemCount: 10,
                      
                    
                      itemBuilder: (context, index) {
                        return Mnue();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(top: 140, left: 25, child: CircleAvatar(radius: 50)),


Positioned(
  top: 230,
  left: 0,
  right: 0,
  child: Row( children: [
  
  Expanded(
    child: ListTile(
    title: Text("data"),
    subtitle: Text("data"),
    
    ),


    
  ),



  Expanded(
    child: ListTile(
    title: Text("data"),
    subtitle: Text("data"),
    
    ),)
  
  ],),
)

        ],
      ),
    );
  }

  Widget Mnue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amberAccent,
        child: ListTile(
          title: Text("Ali"),
          subtitle: Text("GOOD"),
          leading: Icon(Icons.work_rounded),
        ),
      ),
    );
  }
}
