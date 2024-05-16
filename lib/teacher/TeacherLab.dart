import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TeacherLab extends StatefulWidget {
  const TeacherLab({super.key});

  @override
  State<TeacherLab> createState() => _TeacherLabState();
}

class _TeacherLabState extends State<TeacherLab> {
  TextEditingController datecontroller3=TextEditingController();   
DateTime dateTime1 = DateTime.now();
  
  Future<void> showdatepicker(BuildContext context) async {
  
   final DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: dateTime1,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (selectedDate != null && selectedDate != dateTime1) {
      setState(() {
        dateTime1 = selectedDate;

String formattedDate = DateFormat('yyyy-MM-dd ').format(dateTime1);
        datecontroller3.text = formattedDate.toString();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(child: Container(height: MediaQuery.of(context).size.height/27,
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
                  controller: datecontroller3,
                  decoration: InputDecoration(
                    hintText: dateTime1.toString(),
                    hintStyle: GoogleFonts.poppins(),
                    border: InputBorder.none
                  ),
                ),
                          ),
                        ),
                        
                        )),
              ),
               ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: 15,
                 itemBuilder: (context, index) {
                 return Padding(
                   padding: const EdgeInsets.all(15),
                   child: Container(
                     height: MediaQuery.of(context).size.height/15,
                     width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white,),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       SizedBox(
                         width: MediaQuery.of(context).size.width/25,
                       ),
                       Text(index.toString(),style: TextStyle(fontSize: 16),),
                       SizedBox(
                         width: MediaQuery.of(context).size.width/10,
                       ),
                       Container(
                       height: MediaQuery.of(context).size.height/15,
                       width: MediaQuery.of(context).size.width/2.5,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text("Amal",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,overflow: TextOverflow.ellipsis),),
                        ))
                        ,
                      // SizedBox(
                      //    width: MediaQuery.of(context).size.width/3,
                      //  ),
                       CircleAvatar(
                         backgroundColor: Colors.black,
                          radius: 19,
                         child: CircleAvatar(
                               radius: 18,
                               backgroundColor: Colors.white,
                               child: Text("P"),
                         ),
                       ), SizedBox(
                         width: MediaQuery.of(context).size.width/25,
                       )
                       ,
                            
                       Container(
                         width: 1,
                         height: MediaQuery.of(context).size.height/20,
                         color: Color.fromARGB(255, 165, 164, 164),
                       ), SizedBox(
                         width: MediaQuery.of(context).size.width/25,
                       ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                           backgroundColor: Colors.black,
                           radius: 19,
                           child: CircleAvatar(
                                 radius: 18,
                                 backgroundColor: Colors.white,
                                 child: Text("A"),
                           ),
                                                 ),
                        )
                     ],
                    ),
                   ),
                 );
               },)
                               , Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Container(
                     height: MediaQuery.of(context).size.height/15,
                     width: MediaQuery.of(context).size.width/2.5,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                       color: const Color.fromARGB(255, 197, 148, 4),
                       
                     ),
                     child: Center(child: Text("Submit",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)),
                   ),
                ),
                               ),
               SizedBox(
                 height: MediaQuery.of(context).size.height/15,
               )
        
          ],
        ),
      ),
    );
  }
}