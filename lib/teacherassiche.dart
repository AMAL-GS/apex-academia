import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/teacherassigrade.dart';

class TeacherAssichecking extends StatefulWidget {
  const TeacherAssichecking({super.key});

  @override
  State<TeacherAssichecking> createState() => _TeacherAssicheckingState();
}

class _TeacherAssicheckingState extends State<TeacherAssichecking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 237, 234, 234),
      appBar: AppBar(
         backgroundColor:  Color.fromARGB(255, 245, 237, 198),
        automaticallyImplyLeading: false,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Social role in modern",style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Container(
            height: MediaQuery.of(context).size.height/10,
            width: double.infinity,
            color:  Color.fromARGB(255, 245, 237, 198),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 34.5),
              child: Row(
                children: [ 
                 Container(
                  width:MediaQuery.of(context).size.width/50,
                  height:MediaQuery.of(context).size.height/17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(7))
            ,  color:  const Color.fromARGB(255, 197, 148, 4),
              ),
                 ) ,
                 Container(
                height:MediaQuery.of(context).size.height/17,
                  width:MediaQuery.of(context).size.width/1.12,
                  color: Colors.white,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                     Padding(
                       padding: const EdgeInsets.only(left: 15,top: 7),
                       child: Text("Not Submitted",style: TextStyle(color: Color.fromARGB(255, 250, 41, 27),fontSize: 12),),
                     ) ,
                     Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Text("Science role in modern warfare",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                     )
                    ],
                  ),
                 )
                ],
              ),
            ),
          ),
         
          Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 0),
              child: Row(
                children: [ 
                 Container(
                  width:MediaQuery.of(context).size.width/50,
                  height:MediaQuery.of(context).size.height/17,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7))
            ,  color:  const Color.fromARGB(255, 197, 148, 4),
              ),
                 ) ,
                 Container(
                height:MediaQuery.of(context).size.height/17,
                  width:MediaQuery.of(context).size.width/1.12,
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text("10.30",style: TextStyle(fontSize: 13),)
                        ,Text("Nov 17",style: TextStyle(fontSize: 13),)
                      ],
                    ),
                  ),
                 )
                ],
              ),
            ),
             SizedBox(
            height: MediaQuery.of(context).size.height/22,
          ),
          
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/4,
            
              width: MediaQuery.of(context).size.width/1.8,
            color: Colors.amber,
            ),
          ),
               SizedBox(
              height: MediaQuery.of(context).size.height/2.89,
             ),
               Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
               ),
            
             Container(
              height: MediaQuery.of(context).size.height/11,
              color: Colors.white,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 InkWell(onTap: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context) => teacherassigrade(),));
                 },
                  
                  child:  Container(
                     height: MediaQuery.of(context).size.height/15,
                        width:MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),border: Border.all(color: const Color.fromARGB(255, 197, 148, 4),width: 1)
                        ),
                        child: Center(child: Text("cancel",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                  ),),
                  Container(
                     height: MediaQuery.of(context).size.height/15,
                        width:MediaQuery.of(context).size.width/3,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 197, 148, 4),
             
                        ),
                         child: Center(child: InkWell
                         (
                          onTap: () {
                           Navigator.push(context,MaterialPageRoute(builder: (context) => teacherassigrade(),));
                          },
                          child: Text("Grade",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),))),
                  ),
                ],
              ),
             )
        ],
      ),
    );
  }
}