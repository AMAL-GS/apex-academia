import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Student/StudentLogin.dart';
import 'package:flutter_apex_academia/teacher/teacher_login.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}


class _SelectionPageState extends State<SelectionPage> {
  List<String>UserSelection=["Student","Teacher"];
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          SizedBox(height: MediaQuery.of(context).size.height/6,),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text("Who Are You );",style: GoogleFonts.poppins(
              fontSize: 35,fontWeight: FontWeight.w500,),),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
          ),
                   Padding(
                     padding: const EdgeInsets.all(30),
                     child: Center(
                       child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Studentlogin(),));
                        },
                         child: Container(
                                           height: MediaQuery.of(context).size.height/10,
                                           width: MediaQuery.of(context).size.width/1.2,
                                           decoration: BoxDecoration(color:Color.fromARGB(245, 210, 162, 6),
                                           borderRadius: BorderRadius.circular(20)),
                                           child: Center(child: Text("Student",
                                           style:GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),)),
                                          ),
                       ),
                     ),
                   ),
                                  Padding(
                                    padding: const EdgeInsets.all(30),
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => Teacher_login(),));
                                        },
                                        child: Container(
                                                          height: MediaQuery.of(context).size.height/10,
                                                          width: MediaQuery.of(context).size.width/1.2,
                                                          decoration: BoxDecoration(color:Color.fromARGB(245, 210, 162, 6),
                                                          borderRadius: BorderRadius.circular(20)),
                                                          child: Center(child: Text("Teacher",
                                                          style:GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),)),
                                                         ),
                                      ),
                                    ),
                                  ),
        ],
      ),
    );
  }
}