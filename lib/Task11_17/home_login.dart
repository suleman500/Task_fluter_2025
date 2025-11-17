import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigation/stayl/Color.dart';
import 'package:flutter_application_1/Task11_17/staylCstom/costmTextForm.dart';
import 'package:flutter_application_1/Task11_17/staylCstom/costomElvetod.dart';

class HomeLogin extends StatefulWidget {
  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {

  // sing up
  bool s = false;
//عشان احفظ القيم تيكست فيلد
  
// عشان شرط كلمت السر helper
  String passw = "";


  //عشان شرط الايمال helper
  String masseg = "";
//  عشان يخزن كلمت السر 
  String savepass = "";

  // الرساله جوا helper
  String chikpass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E86AB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Container(
             

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
               // color: Color(0xFFA23B72),
              ),

              child: Icon(Icons.facebook,size:100,),
            ),
          ),

          Form(
            child: Column(
              children: [
                Costmtextform(
                  iconss: Icons.email,
                  name: "Email@gmail.com",
                  onCHanged: (value) {
                    setState(() {
                      
                      if (value.contains('@')) {
                        masseg = "Enter will";
                      } else {
                        masseg = "you must @!!!!!";
                      }
                    });
                  },
                  helperr: masseg,
                ),
                Costmtextform(
                  iconss: Icons.password,
                  name: "123*****",
                  helperr: passw,
                  onCHanged: (value) {
                    setState(() {
                      if (value.length < 10 && value.contains("-")) {
                        passw = "Enter will";
                        //خزنت كلمت السر 
                        savepass = value;
                        print(value);
                      } else {
                        passw = "password must longer 10 and (-)";
                      }
                    });
                  },
                ),
                //عرفتها فوق عشان الشرط ببتغير القيمه جو الزر
                s
                    ? Costmtextform(
                      iconss: Icons.radar,
                      name: "Again Password",
                      // هون بطبعلي مسج بشوف كلمت السر متطابقه
                      helperr: chikpass,
                      onCHanged: (value) {
                       setState(() {
                        // بقارن كلمت السر 
                          if (value == savepass) {
                          chikpass = "password identical";
                          
                        }
                        else{
chikpass = "Dont password identical";


                        }
                       });
                      },

                      chik: s,
                    )
                    : Text(""),


                  
               
// هون costom لزر
Costomelvetod(o: () {
  setState(() {
                      s = true;
                    });


},
ccolorr: Colors.white,
namme: "Sing up",),


Costomelvetod(o: () {
  setState(() {
                      s = false;
                    });


},
namme: "Sing in",)



              ],
            ),
          ),
        ],
      ),
    );
  }
}
