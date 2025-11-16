import 'package:flutter/material.dart';
import 'package:flutter_application_1/Task11_15/Style/StayleColor.dart';
import 'package:flutter_application_1/Task11_15/TextFormFildCosto.dart';
import 'package:flutter_application_1/Task5_11/home5_11.dart';

class Home1511 extends StatefulWidget {

  

  @override
  State<Home1511> createState() => _Home1511State();
}

class _Home1511State extends State<Home1511> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" My App"),
        centerTitle: true,
        backgroundColor: appBar,
      ),

      backgroundColor: bOOdy,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
            //  key: ,
              child: Column(
                children: [
                
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Textformfildcosto(label1: "Email.com",enBorderColer: Colors.amberAccent,foBorder: Colors.purpleAccent,hint: "Email@gmail.com",icon: Icons.email_outlined,suff: Icons.email,),
),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Textformfildcosto(label1: "Email.com",enBorderColer: Colors.amberAccent,foBorder: Colors.purpleAccent,hint: "paswoord",icon: Icons.password,suff: Icons.password_sharp,),
          ),       

                  SizedBox(height: 20),

                 
Container(

child: ElevatedButton(onPressed: () {
    Navigator.of(context).pushReplacementNamed('routeScrrin2');
  
}, child: Text("Login")),

),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
