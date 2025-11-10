import 'package:flutter/material.dart';

class Homethrie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        
        children: [



          Container(decoration: BoxDecoration(color: Colors.teal)),

Expanded(child: Row(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
IconButton(onPressed: () {
  
}, icon: Icon(Icons.settings)),


IconButton(onPressed: () {
  
}, icon: Icon(Icons.next_plan_outlined))


],

)),

          Padding(
            // عشان يوخذ بس من فوق
            padding: EdgeInsets.only(top: 100),

            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
              

              //  لا تحط طول و عرض عشان التايتيل اليست
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      //  عشان اي فيه عرض متح يقصدر يضيفها
                      Expanded(
                        child: ListTile(


                          trailing: Icon(Icons.people),
                          title: Center(child: Text("Ali")),
                          subtitle: Text(
                            "sdfdn@gmail.com",
                            style: TextStyle(fontSize: 8),
                            
                          ),
                          
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Center(child: Text("1.5K")),
                          subtitle: Text("Followers"),
                        ),
                      ),

                      Expanded(
                        child: ListTile(
                          title: Center(child: Text("0")),
                          subtitle: Text("Following"),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return foman();
                      },
                    ),
                  ),

 Container(

child: Text("data"),

)

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget foman() {
    return Container(
      
      color: Colors.black12,
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              
              title: Text("data"),
              subtitle: Text("ddd"),
              
            ),

          ),
          Icon(Icons.access_time_filled_rounded),
        ],
      ),
    );
  }
}
