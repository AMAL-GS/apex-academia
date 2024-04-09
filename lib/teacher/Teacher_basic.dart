import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/teacher/teacher_profile.dart';
import 'package:google_fonts/google_fonts.dart';

class Teacher_basic extends StatefulWidget {
  const Teacher_basic({super.key});

  @override
  State<Teacher_basic> createState() => _Teacher_basicState();
}

class _Teacher_basicState extends State<Teacher_basic> {
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
                 child: Text("Edit Basic Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
                height: MediaQuery.of(context).size.height/1.6,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15,),
                        child: Text("Changes with administrater validation",style: TextStyle(color: Color.fromARGB(255, 96, 95, 95),fontWeight:FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Title:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
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
                              labelText: "First Name:",
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
                              labelText: "Last Name:",
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
                              labelText: "DOB:",
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
                              labelText: "Gendor:",
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
                              labelText: "Nationality:",
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
                              labelText: "Blood Group:",
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
                       Padding(
                        padding: const EdgeInsets.only(top: 15,left: 15,),
                        child: Text("Changes with administrater validation",style: TextStyle(color: Color.fromARGB(255, 96, 95, 95),fontWeight:FontWeight.w500),),
                      ), Row(
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Place if Birth:",
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
                              labelText: "State of birth:",
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
                              labelText: "Religion:",
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
                              labelText: "Height(in CMs):",
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
                              labelText: "weight(in KGs):",
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
                              labelText: "Blood Group:",
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Caste:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),),),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Note-",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(left: 15,right: 15),
                             child: Text("""1. At the end of updating all the data please
     click"submit"button""",style: TextStyle(color: const Color.fromARGB(255, 108, 108, 108),fontSize: 13),),
                           ),
                            Padding(
                             padding: const EdgeInsets.only(left: 15,right: 15),
                             child: Text("""2. Changes with "Self validation"will be automatically
     updated into your Master data and does not
     require a proof""",style: TextStyle(color: const Color.fromARGB(255, 108, 108, 108),fontSize: 13),),
                           )
                           ,
                            Padding(
                             padding: const EdgeInsets.only(left: 15,right: 15),
                             child: Text("""3. Changes with "Administrator"will be attended by 
     the class teacher and approved by the
     administrator and confirm""",style: TextStyle(color: const Color.fromARGB(255, 108, 108, 108),fontSize: 13),),
                           ),
                            
                    ],
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
                     Navigator.push(context,MaterialPageRoute(builder: (context) => Teacher_profile(),));
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
    ) ;
  }
}