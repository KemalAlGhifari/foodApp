import 'dart:html';

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasmokeup/screens/home_screen.dart';
import '../screens/thema.dart';

class login extends StatefulWidget {
  const login({super.key});
  
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: YellowCollor,
        child: Center(
          child: Container(
            width: 233,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(13)),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: 30,
                )),
                Image.asset( 
                  "assets/logo.png",
                  width: 59,
                  height: 50,
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 182,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.5)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Continue with Google",
                          style: GoogleFonts.quicksand(
                              color: Colors.black,
                              textStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                        )
                      ]),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "or",
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  )),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 182,
                  height: 30,
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: QuicksandTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5, color: Colors.black), //<-- SEE HERE
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.5),
                      ),
                      contentPadding: EdgeInsets.only(
                          top: 0, bottom: 0, right: 0, left: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 182,
                  height: 30,
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: QuicksandTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5, color: Colors.black), //<-- SEE HERE
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                             BorderSide(color: Colors.black, width: 1.5),
                      ),
                      contentPadding: EdgeInsets.only(
                          top: 0, bottom: 0, right: 0, left: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                InkWell(
                   onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> homeScreen()));
      },
                  child: Container(
                    width: 182,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                        border: Border.all(color: Colors.black, width: 1.5)),
                    alignment: Alignment.center,
                    child: Text(
                      "Log in",
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22,),
                Text("Reset Password", style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xffFFC700) 
                  ),
                )),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Don't have account? ", style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.black 
                  ),
                )),
                     Text("Create account", style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xffFFC700) 
                  ),
                )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
