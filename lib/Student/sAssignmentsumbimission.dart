import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Student/assignmentUpload.dart';

class sAssignmentsub extends StatefulWidget {
  const sAssignmentsub({super.key});

  @override
  State<sAssignmentsub> createState() => _sAssignmentsubState();
}

class _sAssignmentsubState extends State<sAssignmentsub> {
  List<String>status=["Not Submitted","Not Submitted","Submitted"];

 List<Color> colorsStatus = [Colors.red, Colors.red, Colors.green];
 List<String>Grade=["__","__","A"];
 List<Color>colorsGrade=[Colors.black,Colors.black,Colors.green];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ),
          ),
          ListView.separated(
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AssignmentUpload(),));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      
                      width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text("Nov 14",style: TextStyle(color: const Color.fromARGB(255, 116, 115, 115)),),
                        Text("Science role in modern warfare",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [ 
                              Text("Deadline",style: TextStyle(color: const Color.fromARGB(255, 116, 115, 115)),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/4.5,
                                
                              ),
                              Text("Grade",style: TextStyle(color: const Color.fromARGB(255, 116, 115, 115)),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/4.5,
                                
                              ),
                              Text("Status",style: TextStyle(color: const Color.fromARGB(255, 116, 115, 115)),)
                          
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [ 
                              Text("Nov 14,12:30PM",style: TextStyle(),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/8,
                                
                              ),
                              Center(child: Text(Grade[index],style: TextStyle(color: colorsGrade[index]),)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/5,
                                
                              ),
                              Text(status[index],style: TextStyle(color: colorsStatus[index
                              ]),)
                          
                            ],
                          ),
                        )
                      ],
                    ),
                    ),
                  ));
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(),
              );
            },
          )
        ],
      ),
    );
  }
}
