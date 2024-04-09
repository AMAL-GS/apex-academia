import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_apex_academia/teacher/TeacherLab.dart';

import 'package:flutter_apex_academia/teacher/teacherassignment.dart';
import 'package:google_fonts/google_fonts.dart';

class AssignmentChecking extends StatefulWidget {
   int SelectePageindex;
   
  AssignmentChecking({super.key,required this.SelectePageindex,});

  @override
  State<AssignmentChecking> createState() => _AssignmentCheckingState();
}


class _AssignmentCheckingState extends State<AssignmentChecking> 
with SingleTickerProviderStateMixin{
 late TabController tabController;
 final List<String>titlelist=["Assignment","Lab"];
 late String currentTitle;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTitle=titlelist[0];
    tabController=TabController(initialIndex:widget.SelectePageindex,length: 2, vsync: this ,);
    tabController.addListener(changetitle);
  }
 void changetitle(){
  setState(() {
    currentTitle=titlelist[tabController.index];
  });
 }
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
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
        "Social",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.black,
          indicatorColor: Color.fromARGB(255, 197, 157, 83),
             indicatorSize: TabBarIndicatorSize.tab,
             indicatorPadding: EdgeInsets.only(left: 35,right: 35),
             indicatorWeight: 4,
    
          tabs:
           [
          Tab(text: "Assignment",),
          Tab(text: "Lab",)
        ]),
      ),
    body: TabBarView(
      controller: tabController,
      children: [
      TeacherAssignment(),
      TeacherLab()

    ]),
    
    );
  }
}