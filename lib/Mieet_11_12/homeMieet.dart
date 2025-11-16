import 'package:flutter/material.dart';

class Homemieet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.green),

          Positioned(
            // اعطيه كل القيم عشان ما تخرب ويختفي كل اشي
            top: 180,
            left: 0,
            right: 0,
            bottom: 0,
            //
            child: Container(
             

              color: Colors.brown,
              // بقدر اغيرها ليست فيووو
              child: Expanded(
                child: Column(
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                
                      children: [
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
                          ),
                        ),
                
                        Expanded(
                          child: ListTile(
                            title: Text("data"),
                            subtitle: Text("data"),
                          ),
                        ),
                      ],
                    ),
                
                   //عشان يطبعها 

                   // بصيرش احط  expanded  عشان اعمل لييست فيوو
                      Expanded(
                        child: GridView.builder(
                          shrinkWrap: true, //  مهمه عشان بتعطي المساحه الي بحتاجها
                          
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10
                          ),
                          itemCount: 60,
                          itemBuilder: (context, index) {
                            return ss();
                          },
                        ),
                      ),
                    
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            // عشان احدد مكانها
            top: 130,
            left: 30,

            child: Container(
              //وبعطيه حجم
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),

              child: Icon(Icons.ac_unit),
            ),
          ),
        ],
      ),
    );
  }

  Widget ss() {
    return Container(
      color: Colors.blueGrey,
      child: ListTile(title: Text("dataggggg"), subtitle: Text("dddddddd")),
    );
  }
}
