import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/SelectionPage.dart';
import 'package:flutter_apex_academia/Student/StudentLogin.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:5), () { Navigator.push(context, MaterialPageRoute(builder:(context)=>SelectionPage()));});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("apex academia",style:
      GoogleFonts.poppins( color:const Color.fromARGB(255, 8, 8, 8)
        ,fontSize: 45,fontWeight: FontWeight.w600)
      
      )),
    );
  }
}
