import 'package:flutter/material.dart';

class Home_11_11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
//  هون المشكله 
profail("userName", "yourEmail"),
 

          Container(
         
            
            child:Stack(
              children: [
                
                
                 Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5
                  ),
                  
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return formion();
                  },
                ),
              ),


              ]
            ),
          ),
        ],
      ),
    );
  }

  Widget formion() {
    return Container(
      color: Colors.amberAccent,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("jjjjj"),
            subtitle: Text("kkkk"),

            trailing: Icon(Icons.abc_rounded),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 1,
      ),
    );
  }

  Widget profail(String userName, yourEmail) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(8),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              ListTile(
                title: Text(userName),
                subtitle: Text(yourEmail + "@gmail.com"),
              ),
              Column(
                children: [
                  ListTile(title: Text("1.5K"), subtitle: Text("Followers")),
                ],
              ),
              Column(
                children: [
                  ListTile(title: Text("0"), subtitle: Text("Following")),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 1,
      ),
    );
  }
}
