import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/teacher/assignmentChecking.dart';

class Teacher_Records extends StatefulWidget {
  const Teacher_Records({super.key});

  @override
  State<Teacher_Records> createState() => _Teacher_RecordsState();
}

class _Teacher_RecordsState extends State<Teacher_Records> {
  @override
  Widget build(BuildContext context) {
     List<String> subjects = [
    "All",
    "English",
    "Malayalam",
    "Science",
    "Maths",
    "Physics",
    "Social",
    "Chemisrtry",
    "Computer",
    "Hindi",
    "Biology"
  ];
    return Scaffold( 
       body: SafeArea(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Records",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "subjects",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: GridView.count(
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(11, (index) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 20,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              
                              Navigator.push(context,MaterialPageRoute(builder: (context) => AssignmentChecking(SelectePageindex: 0, ),));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8.5,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Image.asset(
                                "asset/subjectphoto.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            subjects[index],
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    )

    );
  }
}