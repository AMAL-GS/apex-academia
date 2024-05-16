import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Student/Student_recordspage.dart';
import 'package:flutter_apex_academia/Student/ssignView.dart';

class AssignmentUpload extends StatefulWidget {
  const AssignmentUpload({super.key});

  @override
  State<AssignmentUpload> createState() => _AssignmentUploadState();
}

class _AssignmentUploadState extends State<AssignmentUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 237, 234, 234),
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 245, 237, 198),
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
      body: Stack(
        children: [
          Column(
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
                           padding: const EdgeInsets.only(left: 15,top: 0),
                           child: Text("Not Submitted",style: TextStyle(color: Color.fromARGB(255, 250, 41, 27),fontSize: 12),),
                         ) ,
                         Padding(
                           padding: const EdgeInsets.only(left: 15,top: 0),
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
              
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Note -",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("1.Research Thoroughly:",style: TextStyle(fontWeight: FontWeight.w500),),
                  )
                  ,Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Gather information from reliable",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                
                ],
                
              )
             , Padding(
               padding: const EdgeInsets.only(left: 26),
               child: Text("sources such as books,academic journals,and reputable",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 26),
               child: Text("websites",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
             ),
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("1.Organize Your Thoughts:",style: TextStyle(fontWeight: FontWeight.w500),),
                  )
                  ,Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Create an outline to organize",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                 
                
                ],
                
              ),
               Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text("your ideas and ensure a logical flow in your assignment",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                  Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("1.Provide Evidence:",style: TextStyle(fontWeight: FontWeight.w500),),
                  )
                  ,Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Support your arguments with ",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                 
                
                ],
                
              ),
               Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text("relevent evidence,such as data,statistics,or examples.",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                    Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("1.Submit On Time:",style: TextStyle(fontWeight: FontWeight.w500),),
                  )
                  ,Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Make sure to submit your assignment",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                 
                
                ],
                
              ),
               Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text("before the deadline to avoid any penalties",style: TextStyle(color: Color.fromARGB(255, 109, 108, 108),fontSize: 13),),
                  ),
                   SizedBox(
                  height: MediaQuery.of(context).size.height/5,
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
                       Navigator.push(context,MaterialPageRoute(builder: (context) => Records(),));
                     },
                      
                      child:  Container(
                         height: MediaQuery.of(context).size.height/15,
                            width:MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),border: Border.all(color: const Color.fromARGB(255, 197, 148, 4),width: 1)
                            ),
                            child: Center(child: Text("cancel",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                      ),),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => sAssignmentView(),));
                        },
                        child: Container(
                           height: MediaQuery.of(context).size.height/15,
                              width:MediaQuery.of(context).size.width/3,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 197, 148, 4),
                                         
                              ),
                               child: Center(child: Text("Upload",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                        ),
                      ),
                    ],
                  ),
                 )
            ],
          ),
         
        ],
      ),
    );
  }
}