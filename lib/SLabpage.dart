import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLabpage extends StatefulWidget {
  const SLabpage({super.key});

  @override
  State<SLabpage> createState() => _SLabpageState();
}

class _SLabpageState extends State<SLabpage> {

List<String>Attendence=["Present","Present","Absent"];
 List<Color>Attendencecolor=[Colors.green,Colors.green,Colors.red];
 List<String>Statuss=["Complete","Incomplete","__"];
 List<Color>Statusscolor=[Colors.green,Colors.red,Colors.black];

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
                            Text("Attendence",style: TextStyle(color: const Color.fromARGB(255, 116, 115, 115)),),
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
                            Text(Attendence[index],style: TextStyle(color: Attendencecolor[index]),),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/3.3,
                              
                            ),
                            Center(child: Text("__",style: TextStyle(),)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/4.5,
                              
                            ),
                            Text("incomplete",style: TextStyle(),)
                        
                          ],
                        ),
                      )
                    ],
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