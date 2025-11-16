import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigation/Scrrin1.dart';
import 'package:flutter_application_1/Navigation/stayl/Color.dart';

class Homnavi extends StatefulWidget {
  @override
  State<Homnavi> createState() => _HomnaviState();
}

class _HomnaviState extends State<Homnavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: appColor),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 200,

          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(

// icons
//suffixIcon: ,
                // icons 
                 // prefix: ,
                  // مكانها تحت 
                  // helper: ,
                  // عند  الخطاء
                  //errorBorder: ,

                  //             ز الايميل
                  //   helperText: ,

                  //بحط كلمه

                  /// label: ,

                  // focusedBorder: ,
                  //لون
                  // focusColor: ,
                  //  disabledBorder: OutlineInputBorder(),
                  // مايكون عندي اشي
                  border: InputBorder.none,
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('routeScrrin1');

                  //  Navigator.of(
                  //  context).
                  //  push(MaterialPageRoute(builder: (_) => Scrrin1()));
                },
                child: Text("data"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('routeScrrin2');

                  //  Navigator.of(
                  //  context).
                  //  push(MaterialPageRoute(builder: (_) => Scrrin1()));
                },
                child: Text("data22222"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
