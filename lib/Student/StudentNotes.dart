import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentNotes11 extends StatefulWidget {
  var subjectnames1;
  var subjectnotestext;
  StudentNotes11({super.key,required this.subjectnames1,required this.subjectnotestext});

  @override
  State<StudentNotes11> createState() => _StudentNotes11State();
  
}

class _StudentNotes11State extends State<StudentNotes11> {
  
  @override
  
  Widget build(BuildContext context) {
    var subjectnames2;
    if(widget.subjectnames1=="MALAYALAM"){
      setState(() {
        subjectnames2="Malayalam";
      });
    }
    else if(widget.subjectnames1=="ENGLISH"){
   setState(() {
     subjectnames2="English";
   });
    }
     else if(widget.subjectnames1=="SCIENCE"){
   setState(() {
     subjectnames2="Science";
   });
    }
     else if(widget.subjectnames1=="MATHS"){
   setState(() {
     subjectnames2="Maths";
   });
    }
     else if(widget.subjectnames1=="PHYSICS"){
   setState(() {
     subjectnames2="Physics";
   });
    }
     else if(widget.subjectnames1=="SOCIAL SCIENCE"){
   setState(() {
     subjectnames2="Social science";
   });
    }
     else if(widget.subjectnames1=="BIOLOGY"){
   setState(() {
     subjectnames2="Biology";
   });
    }
     else if(widget.subjectnames1=="IT"){
   setState(() {
     subjectnames2="IT";
   });
    }
     else if(widget.subjectnames1=="DRAWINGS"){
   setState(() {
     subjectnames2="Drawings";
   });
    }
     else if(widget.subjectnames1=="LAB"){
   setState(() {
     subjectnames2="Lab";
   });
    }
    return Scaffold(
      appBar: AppBar( 
         backgroundColor: Color.fromARGB(255, 245, 237, 198),
         title: Row( 
          children: [ 
            Text(subjectnames2,style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
            Text(" Notes",style: GoogleFonts.poppins(fontWeight: FontWeight.w500),)
          ],
         ),
      ),
      body: Center( 
        child: Text(widget.subjectnotestext,style: TextStyle(fontSize: 22),),
      ),
    );
  }
}