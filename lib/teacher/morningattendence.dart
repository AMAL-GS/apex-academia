import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MorningAttendence extends StatefulWidget {
  const MorningAttendence({super.key});

  @override
  State<MorningAttendence> createState() => _MorningAttendenceState();
}

class _MorningAttendenceState extends State<MorningAttendence> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items: List<String>.generate(10000, (i) => i.toString());
  }
    final List<String> Studentsatte = ["ANUNANDHANA","SUBIN","ARUN","NITHEESH",
    "ANANDHU","RAJISHA","RAMISHA","ANAKHA","SIVANI","NAJA","MIMMINI","ZIA",
    "SIVAGANGA",
    "ABHIJITH","ABHINANDH","RIDHUN","ANOOP","ANI","ANISH","ANUSHA","ANSHAF",
    "ANAS","AMAL","AKASH K","AKASH P","AKSHAY","AJITH","RAHUL","DEEPIKA",
    "SUSU","KRIPA","CHANDRAN","AMALA","SURYA","SOYA",
    "DHANESH","MAHIN","DHARSHITH","DEVANANDHA","DEVANJANA","GEET","AACHI ","NEHA",
    "DHRASHTI","SREESHMA","VRINDHA",'Some other item'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Studentsatte.length,
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
                    Text("1",style: TextStyle(fontSize: 16),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/10,
                    ),
                    Text(Studentsatte[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)
                     ,SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                    ),
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
                    ),

                    Container(
                      width: 1,
                      height: MediaQuery.of(context).size.height/20,
                      color: Color.fromARGB(255, 165, 164, 164),
                    ), SizedBox(
                      width: MediaQuery.of(context).size.width/25,
                    ),
                     CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 19,
                      child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text("A"),
                      ),
                    )
                  ],
                 ),
                ),
              );
            },)
           , Padding(
             padding: const EdgeInsets.all(15),
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
            SizedBox(
              height: MediaQuery.of(context).size.height/15,
            )
          ],
        ),
      )
    );
  }
}