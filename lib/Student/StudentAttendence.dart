import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_apex_academia/Student/leavealertbox.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentAttendence extends StatefulWidget {
  const StudentAttendence({super.key});

  @override
  State<StudentAttendence> createState() => _StudentAttendenceState();
}

class _StudentAttendenceState extends State<StudentAttendence> {
  @override
  Widget build(BuildContext context) {
    CalendarFormat format = CalendarFormat.month;
   DateTime selectedDay = DateTime.now();
   DateTime focusedDay = DateTime.now();

   TextEditingController _eventController = TextEditingController();
   @override
   void dispose() {
    _eventController.dispose();
    super.dispose();
   }
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
        physics: ScrollPhysics(),
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
                  
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    
                    ),
                    child: ExpansionTile(title: Text("My Calender")
                    ,children: [
                      
                        Column(
                           children: [
                            //defining min an max years
                            Container(
                              
                              child: TableCalendar(
                                 focusedDay: selectedDay,
                                 firstDay: DateTime(1990),
                                 lastDay: DateTime(2050),
                              
                               //changing calendar format
                                      calendarFormat: format,
                                      onFormatChanged: (CalendarFormat _format) {
                               setState(() {
                                 format = _format;
                               });
                                      },
                                      startingDayOfWeek: StartingDayOfWeek.monday,
                                      daysOfWeekVisible: true,
                              
                                      //Day Changed on select
                                      onDaySelected: (DateTime selectDay, DateTime focusDay) {
                               setState(() {
                                 selectedDay = selectDay;
                                 focusedDay = focusDay;
                               });
                               print(focusedDay);
                                      },
                                      selectedDayPredicate: (DateTime date) {
                               return isSameDay(selectedDay, date);
                                      },
                              
                              
                                      //To style the Calendar
                                      calendarStyle: CalendarStyle(cellPadding: EdgeInsets.all(8),
                               isTodayHighlighted: true,
                               selectedDecoration: BoxDecoration(
                                 color: const Color.fromARGB(255, 61, 243, 33),
                                 shape: BoxShape.circle,
                                 
                               ),
                               selectedTextStyle: TextStyle(color: Colors.white),
                               todayDecoration: BoxDecoration(
                                 color: Colors.grey,
                                 shape:BoxShape.circle,
                               ),
                               defaultDecoration: BoxDecoration(
                                 shape:BoxShape.circle,
                               ),
                               weekendDecoration: BoxDecoration(
                                 shape: BoxShape.circle,
                               ),
                                      ),
                                      headerStyle: HeaderStyle(
                               formatButtonVisible: true,
                               titleCentered: true,
                               formatButtonShowsNext: false,
                               formatButtonDecoration: BoxDecoration(
                               
                               
                               ),
                               formatButtonTextStyle: TextStyle(
                                 color: Colors.white,
                               ),
                                      ),
                                    ),
                            ),
                            Container(
                          height: 1,
                          color: const Color.fromARGB(255, 240, 239, 239),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [ 
                                   CircleAvatar(
                                    backgroundColor:const Color.fromARGB(255, 61, 243, 33),
                                    radius: 15,
                                   ),
                                  //  SizedBox(
                                  //   width: MediaQuery.of(context).size.width/50,
                                  //  ),
                                   Text("Present"),
                                    SizedBox(
                                    width: MediaQuery.of(context).size.width/30,
                                   ),
                                    CircleAvatar(
                                    backgroundColor:Color.fromARGB(255, 211, 39, 9),
                                    radius: 15,
                                   ),
                                  //   SizedBox(
                                  //   width: MediaQuery.of(context).size.width/50,
                                  //  ),
                                   Text("Absent"),
                                    SizedBox(
                                    width: MediaQuery.of(context).size.width/30,
                                   ),
                                    CircleAvatar(
                                    backgroundColor:Color.fromARGB(255, 43, 6, 227),
                                    radius: 15,
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundColor: Colors.white,
                                    ),
                                   ),
                                  //   SizedBox(
                                  //   width: MediaQuery.of(context).size.width/50,
                                  //  ),
                                   Text("""Holidays/
Week off"""),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/15,
                        )

                            ],
                          ),
                    ],
                    
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                  child: Container(
      
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    
                    ),
                    child: ExpansionTile(title: Text("Apply Leave")
                   , children: [
                     Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.1,
            width: MediaQuery.of(context).size.width/0.8,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 8, left: 8),
                        child: Row(
                          children: [
                            Text(
                              "Date:",
                              style: TextStyle(
                                color: Color.fromARGB(255, 88, 87, 87),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "2024-01-05",
                              style: TextStyle(
                                color: Color.fromARGB(255, 88, 87, 87),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Status :",
                              style: TextStyle(
                                color: Color.fromARGB(255, 88, 87, 87),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/30,
                              width: MediaQuery.of(context).size.width/5,
                              decoration: BoxDecoration(
                                 color: const Color.fromARGB(255, 197, 148, 4),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                "Pending",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, right: 10, left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 1.5,
                                    
                                    )
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, 
                                // left: 15,
                                 right: 8, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant's Name",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 88, 87, 87),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Akash E",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Schedule",
                                          style:TextStyle(
                                            color:
                                                Color.fromARGB(255, 88, 87, 87),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "thu-Apr-2021",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "-",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Fri-Apr-2021",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Reason",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 88, 87, 87),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Sickkk",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 100,
                                        width: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                   
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Category",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 88, 87, 87),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Casual",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Days",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 88, 87, 87),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "Attachment",
                                  style:TextStyle(
                                    color: Color.fromARGB(255, 88, 87, 87),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  height: 26,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 120, 119, 119),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 85,
                                      child: Center(
                                          child: Text(
                                        "Edit",
                                        style:TextStyle(
                                          color:Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                          color:
                                            Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),border: Border.all(color: const Color.fromARGB(255, 197, 148, 4),width: 1)),
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Container(
                                      height: 26,
                                      width: 90,
                                      child: Center(
                                          child: Text(
                                        "Delete",
                                        style: TextStyle(
                                          color:Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 197, 148, 4),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
              height: 70,
              width: double.infinity,
              //   color: Color.fromARGB(255, 226, 223, 223),
              // child: Container(
              //   width: 60,
              //   height: 20,
              //   color: Colors.red,
              // ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 197, 148, 4),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "Add a Leave Application",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  ),
                  onTap: () {
                 LeaveApplicationAlertbox(context);
                  },
                ),
              ))
        ],
      ),
                   ],
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                  child: Container(
              
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    
                    ),
                    child: ExpansionTile(title: Text("Upcoming Holidays")
                   
                    ),
                  ),
                ),
                Container(
      
                  width: double.infinity,
                )
          ],
        ),
      ),
    );
  }
}