import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sAssignmentView extends StatefulWidget {
  const sAssignmentView({super.key});

  @override
  State<sAssignmentView> createState() => _sAssignmentViewState();
}

class _sAssignmentViewState extends State<sAssignmentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: const Color.fromARGB(255, 237, 234, 234),
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
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
            
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
              return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/4,
                
                  width: MediaQuery.of(context).size.width/1.8,
                color: Colors.amber,
                ),
              ),
            );
            },)
               
               
               
          ],
        ),
      ),);
  }
}