import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigation/stayl/Color.dart';
import 'package:flutter_application_1/Task11_17/DataUsers.dart';
import 'package:flutter_application_1/Task11_17/staylCstom/costmTextForm.dart';
import 'package:flutter_application_1/Task11_17/staylCstom/costomElvetod.dart';
import 'package:flutter_application_1/Task5_11/home5_11.dart';

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

  //عشان تتغير helper
  String masseg = "";
  // الرساله جوا helper
  String chikpass = "";
  //  عشان يخزن كلمت السر
  //زعشان يخزن الايمال
  String savepass = "";
  String saveEmail = "";

  //تبعات لفنكشن يخزن المعلومات chixpassAndEmail
  bool pass = false;
  bool emal = false;

  List<Datausers> acoont = [];

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

              child: Icon(Icons.facebook, size: 100),
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
                        saveEmail = value;

                        emal = t;
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
                        pass = true;

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
                          } else {
                            chikpass = "Dont password identical";
                          }
                        });
                      },

                      chik: s,
                    )
                    : Text(""),

                // هون costom لزر

                // الزر الاول لتسجيل
                Costomelvetod(
                  o: () {
                    setState(() {
                      s = true;
                      chixpassAndEmail();
                    });
                  },
                  ccolorr: Colors.white,
                  namme: "Sing up",
                ),



                // تسجيل دخول
                Costomelvetod(
                  o: () {
                    setState(() {
                      s = false;
                      
                    });
                  },
                  namme: "Sing in",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // عشان اخزن الحسابات
  chixpassAndEmail() {
    if (pass == true && emal == true) {
      Datausers newUser = Datausers(emaail: saveEmail, pass: passw);
      acoont.add(newUser);
      print(acoont[0]);
    }
  }
}
