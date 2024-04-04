import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentAttendence extends StatefulWidget {
  const StudentAttendence({super.key});

  @override
  State<StudentAttendence> createState() => _StudentAttendenceState();
}

class _StudentAttendenceState extends State<StudentAttendence> {
  @override
  Widget build(BuildContext context) {
    List<String>Attendences=["My Calender","Apply Leave","Upcoming Holidays"];
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 247, 247),
        automaticallyImplyLeading: false,
        title: Text(
          "Leave&Attendence",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ 
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/10,),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 142, 140, 140),
                      radius: 11,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 35,
                    ),
                    Text(
                      "Feb-2024",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row( 
                  children: [ 
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 15,bottom: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height/8,
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 245, 237, 198),
                          borderRadius: BorderRadius.circular(5),boxShadow:[
                            BoxShadow(blurRadius: 5,color: Color.fromARGB(255, 175, 174, 174),offset: Offset(0,3))]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [ 
                             Text("Full days",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),)
                             ,SizedBox(height: MediaQuery.of(context).size.height/50,)
                             ,Text("7",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),)
                             ,Text("Days")
                          ],
                        ),
                        
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height/8,
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 245, 237, 198),
                          borderRadius: BorderRadius.circular(5),boxShadow:[
                            BoxShadow(blurRadius: 5,color: Color.fromARGB(255, 175, 174, 174),offset: Offset(0,3))]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [ 
                             Text("Half days",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),)
                             ,SizedBox(height: MediaQuery.of(context).size.height/50,)
                             ,Text("0",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),)
                             ,Text("Days")
                          ],
                        ),),
                    ),Padding(
                      padding: const EdgeInsets.only(bottom: 15,top: 15,right: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height/8,
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 245, 237, 198),
                          borderRadius: BorderRadius.circular(5),boxShadow:[
                            BoxShadow(blurRadius: 5,color: Color.fromARGB(255, 175, 174, 174),offset: Offset(0,3))
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [ 
                             Text("Total days",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),)
                             ,SizedBox(height: MediaQuery.of(context).size.height/50,)
                             ,Text("7",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),)
                             ,Text("Days")
                          ],
                        ),),
                    ),
                  ],
                ),
               
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height/13,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    
                    ),
                    child: ExpansionTile(title: Text("My Calender")),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height/13,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    
                    ),
                    child: ExpansionTile(title: Text("Apply Leave")),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height/13,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    
                    ),
                    child: ExpansionTile(title: Text("Upcoming Holidays")
                    ,children: [   
                    
                        
                         
                          
                           
                            
                             
                              
                               
                                
                    ],
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}