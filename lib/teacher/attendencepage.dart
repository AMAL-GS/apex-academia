import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/teacher/AfternoonAttendence.dart';
import 'package:flutter_apex_academia/teacher/morningattendence.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Attendence extends StatefulWidget {
  const Attendence({super.key});

  @override
  State<Attendence> createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
 TextEditingController datecontroller2=TextEditingController();   
DateTime dateTime = DateTime.now();
  
  Future<void> showdatepicker(BuildContext context) async {
  
   final DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (selectedDate != null && selectedDate != dateTime) {
      setState(() {
        dateTime = selectedDate;

String formattedDate = DateFormat('yyyy-MM-dd ').format(dateTime);
        datecontroller2.text = formattedDate.toString();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
     appBar: PreferredSize(preferredSize: Size.fromHeight(120), child: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 237, 198),
        automaticallyImplyLeading: false,
        
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [ 
          Text(
        "Attendence",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        Center(child: Container(height: MediaQuery.of(context).size.height/27,
        width:  MediaQuery.of(context).size.width/3.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:  Color.fromARGB(255, 197, 157, 83),
          
        
        ),
        child: InkWell(
onTap: (){
  showdatepicker(context);
},

          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: TextField(
              controller: datecontroller2,
              decoration: InputDecoration(
                hintText: dateTime.toString(),
                hintStyle: GoogleFonts.poppins()
              ),
            ),
          ),
        ),
        
        ))
       
        ],),
        bottom: TabBar(
          labelColor: Colors.black,
          indicatorColor: Color.fromARGB(255, 197, 157, 83),
             indicatorSize: TabBarIndicatorSize.tab,
             indicatorPadding: EdgeInsets.only(left: 35,right: 35),
             indicatorWeight: 4,

          tabs: [
          Tab(text: "Morning",),
          Tab(text: "Afternoon",)
        ]),
      ),
   ), body: TabBarView(children: [
     MorningAttendence(),
     AfternoonAttendence()
    ]),

    ));
   
  }
}