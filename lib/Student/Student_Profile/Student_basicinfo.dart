import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_apex_academia/Student/Student_Profile/Student_profilepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class basicinformation extends StatefulWidget {
 var fname1;
 var title1;
 var lname1;
 var dob1;
 var gendor1;
 var nati1;
 var bldgrp1;
 var pob1;
 var sob1;
 var reli1;
 var hei1;
 var wei1;
 var motherl1;
 var caste1;
basicinformation({super.key ,required this.fname1,required this.title1,required this.lname1,required this.dob1
,required this.gendor1,required this.nati1,required this.bldgrp1,required this.pob1,required this.sob1,required this.reli1
,required this.hei1,required this.wei1,required this.motherl1,required this.caste1});

  @override
  State<basicinformation> createState() => _basicinformationState();
}

class _basicinformationState extends State<basicinformation> {
  var titlecontroller=TextEditingController();
  var fnamecontroller=TextEditingController();
  var lnamecontroller=TextEditingController();
  var dobcontroller=TextEditingController();
  var gendercontroller=TextEditingController();
  var natiocontroller=TextEditingController();
  var bloodcontroller=TextEditingController();
  var pobcontroller=TextEditingController();
  var sobcontroller=TextEditingController();
  var religioncontroller=TextEditingController();
  var heicontroller=TextEditingController();
  var weightcontroller=TextEditingController();
  var mothertcontroller=TextEditingController();
  var castecontroller=TextEditingController();
  var propic3;
  
  @override
void initState() {
    // TODO: implement initState
    super.initState();
    titlecontroller.text=widget.title1;
    fnamecontroller.text=widget.fname1;
    lnamecontroller.text=widget.lname1;
    dobcontroller.text=widget.dob1;
    gendercontroller.text=widget.gendor1;
    natiocontroller.text=widget.nati1;
    bloodcontroller.text=widget.bldgrp1;
    pobcontroller.text=widget.pob1;
    sobcontroller.text=widget.sob1;
    heicontroller.text=widget.hei1;
    weightcontroller.text=widget.wei1;
    mothertcontroller.text=widget.motherl1;
    castecontroller.text=widget.caste1;
   print("llllllllllllllllllbbbbbbbbbbbbbbbbbbbbbbbbggggggggggggggggnnnnnnnnnn$titlecontroller.text");
   propicget3();
  }
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
                    backgroundImage: NetworkImage(propic3)
                    // AssetImage("asset/profilephoto.jpg"),
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
                            controller: titlecontroller,
                            decoration: InputDecoration(
                              labelText: titlecontroller.text,
                              hintText: "Title",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:fnamecontroller.text ,
                              hintText: "First Name",

                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:lnamecontroller.text,
                              hintText: "Last Name:",
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:dobcontroller.text ,
                              hintText: "DOB:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:gendercontroller.text,
                              hintText:  "Gender:",
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: natiocontroller.text,
                              hintText: "Nationality:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:bloodcontroller.text ,
                              hintText: "Blood Group:",
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: pobcontroller.text,
                              hintText: "Place if Birth:",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:sobcontroller.text ,
                              hintText: "State of birth:",
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.only(top: 15),
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
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: heicontroller.text,
                              hintText: "Height(in CMs):",
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: weightcontroller.text,
                              hintText: "weight(in KGs):",
                              labelStyle: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),
                            border: OutlineInputBorder(borderSide: new BorderSide(color: Color.fromARGB(255, 71, 71, 71))),
                            focusedBorder: OutlineInputBorder(borderSide: new BorderSide(color: const Color.fromARGB(255, 79, 79, 79)))
                            ,floatingLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)
                            ),
                          ),
                          
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: mothertcontroller.text,
                              hintText: "Mother L:",
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
                              labelText:castecontroller.text ,
                              hintText: "Caste:",
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
                     Navigator.push(context,MaterialPageRoute(builder: (context) => profilepage(),));
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
   Future <void> propicget3() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
      propic3=prefs.getString("propic1");
  });
  
  }
  
}
