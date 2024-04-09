import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/teacher/Teacher_Calender.dart';
import 'package:flutter_apex_academia/teacher/Teacher_home.dart';
import 'package:flutter_apex_academia/teacher/attendencepage.dart';
import 'package:flutter_apex_academia/teacher/teacher_records.dart';

class Teacher_homepage extends StatefulWidget {
  const Teacher_homepage({super.key});

  @override
  State<Teacher_homepage> createState() => _Teacher_homepageState();
}

class _Teacher_homepageState extends State<Teacher_homepage> {
    int _selectedindex=0;
  static  List<Widget>_widgetoptions=[
    Teacher_home(),
    Teacher_Records(),
    Attendence(),
     Teacher_events(),

  ];
   void _onitemtapped(int index){
    setState(() {
      _selectedindex=index;
    });
   }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body:Center(
    child: _widgetoptions.elementAt(_selectedindex),
   ),
  bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed, 
    selectedIconTheme: IconThemeData(color: Colors.amber,size: 30),
    selectedLabelStyle: TextStyle(color: Colors.amber,),
    selectedItemColor: Colors.amber,
    showSelectedLabels: true,
  
    
    unselectedIconTheme: IconThemeData(color: const Color.fromARGB(255, 175, 76, 137)),
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.black,size: 30,),
    label:"Home"
     
  
    ),
    BottomNavigationBarItem(icon: Icon(Icons.import_contacts_outlined,color: Colors.black,size: 30,),

    label: "Records",
   ),
    BottomNavigationBarItem(
      icon: Icon(Icons.check_circle_outline_rounded,color: Colors.black,size: 30,),
    label: "Attendence",
   ),
    BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,color: Colors.black,size: 30,),
    label: "Events",
   )
  ],
  
  currentIndex: _selectedindex,

  iconSize: 40,
  onTap: _onitemtapped,
  
  ),



    );
  }
}