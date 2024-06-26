import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Teacher_Addres extends StatefulWidget {
  const Teacher_Addres({super.key});

  @override
  State<Teacher_Addres> createState() => _Teacher_AddresState();
}

class _Teacher_AddresState extends State<Teacher_Addres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 237, 234, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 234, 234),
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
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ 
             ListTile(
              title:  Text("Amal",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 16),)
                    
                   , subtitle:Text("amalgs6282@gmail.com",style: TextStyle(fontSize: 14),),
                   trailing: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage("asset/profilephoto.jpg"),
                   ),
             ),
               Padding(
               padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
               child: Container(
                height: MediaQuery.of(context).size.height/15
                ,width: double.infinity,
                decoration: BoxDecoration(color: Color.fromARGB(255, 250, 250, 250),borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight:Radius.circular(5) )),
               child: Padding(
                 padding: const EdgeInsets.only(top: 15,left: 15),
                 child: Text("Edit address informations",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
               ),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Container(
                child: Container(
                height: MediaQuery.of(context).size.height/3.8,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Row(
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            keyboardType: TextInputType.multiline
                            ,minLines: 1,
                             maxLines: 4,
                            decoration: InputDecoration(
                              labelText: "House Name:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "City:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                        ],
                      ),  
                      Row(
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Pin Code:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "District:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                        ],
                      ),
                    ],
                  ),
                  
                ),
                
                ),
               ),
             ),
               Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Container(
                height: MediaQuery.of(context).size.height/11,
                color: Colors.white,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   InkWell(onTap: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context) =>Teacher_Addres(),));
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
                           child: Center(child: Text("Submit",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                    ),
                  ],
                ),
               ),
             )
          ],
        ),
      ),

    );
  }
}