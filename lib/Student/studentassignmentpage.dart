import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Student/SLabpage.dart';
import 'package:flutter_apex_academia/Student/sAssignmentsumbimission.dart';
import 'package:google_fonts/google_fonts.dart';

class SassignmentPage extends StatefulWidget {
  SassignmentPage({required this.subjectss});
  var subjectss;

  @override
  State<SassignmentPage> createState() => _SassignmentPageState();
}

class _SassignmentPageState extends State<SassignmentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
     appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 237, 198),
        automaticallyImplyLeading: false,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.subjectss,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        bottom: TabBar(
          labelColor: Colors.black,
          indicatorColor: Color.fromARGB(255, 197, 157, 83),
             indicatorSize: TabBarIndicatorSize.tab,
             indicatorPadding: EdgeInsets.only(left: 35,right: 35),
             indicatorWeight: 4,

          tabs: [
          Tab(text: "Assignment",),
          Tab(text: "Lab",)
        ]),
      ),
    body: TabBarView(children: [
      sAssignmentsub(),
      SLabpage()
    ]),

    ));
   
  }
}