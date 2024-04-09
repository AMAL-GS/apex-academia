import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/teacher/teacherassiche.dart';


class TeacherAssignment extends StatefulWidget {
  const TeacherAssignment({super.key});

  @override
  State<TeacherAssignment> createState() => _TeacherAssignmentState();
}

class _TeacherAssignmentState extends State<TeacherAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column(
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
              itemCount: 15,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => TeacherAssichecking(),));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 18,
                        
                        width: double.infinity,
                                         child: Row(
                      children: [ 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            Text("1"),
                            Text("Amal")
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.6,
                        ), Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            Text("Status"),
                            Text("Submitted")
                          ],
                        ),
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
      ),
    );

  }
}