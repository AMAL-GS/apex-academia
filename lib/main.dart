import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/SelectionPage.dart';
import 'package:flutter_apex_academia/Student/Student_home.dart';
import 'package:flutter_apex_academia/Student/Student_homepage.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


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
  void initState()  {
    // TODO: implement initState
    super.initState();
   logingetusersplash();
  
   

    // Timer(Duration(seconds:5), () { Navigator.push(context, MaterialPageRoute(builder:(context)=>SelectionPage()));});
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
   var username3;
 Future <void> logingetusersplash() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
      username3=prefs.getString("Username1");
      print("7777777777777777777777777777777777777777777777777777777777777777$username3");
       if(username3 != null){
     Timer(Duration(seconds:2), () { Navigator.push(context, MaterialPageRoute(builder:(context)=>homePage()));});  
    }
    else{
       Timer(Duration(seconds:5), () { Navigator.push(context, MaterialPageRoute(builder:(context)=>SelectionPage()));});
    }
  });}
}
