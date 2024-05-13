import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Student/Student_Profile/Student_profilepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressEdit extends StatefulWidget {
  var houses;
  var city1;
  var pin1;
  var dis1;
  
 AddressEdit({super.key,required this.houses,required this.city1,required this.pin1,required this.dis1});

  @override
  State<AddressEdit> createState() => _AddressEditState();
}

class _AddressEditState extends State<AddressEdit> {
  var housecontroller=TextEditingController();
  var citycontroller=TextEditingController();
  var pincontroller=TextEditingController();
  var discontroller=TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    housecontroller.text=widget.houses;
    citycontroller.text=widget.city1;
    pincontroller.text=widget.pin1;
    discontroller.text=widget.dis1;
  }
  var nameStudent;
  Future<void>_loaddataa()async {
    SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
      nameStudent=prefs.getString("nameofstudent");
    });
  }
  
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
              title:  Text(nameStudent.toString(),style: TextStyle(fontWeight:FontWeight.w500,fontSize: 16),)
                    
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    
                    children: [ 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                        children: [ 
                             Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/14,
                          width:MediaQuery.of(context).size.width/2.6,
                          child: TextField(
                            keyboardType: TextInputType.multiline
                            ,minLines: 1,
                             maxLines: 4,
                             controller: housecontroller,
                            decoration: InputDecoration(
                              labelText: housecontroller.text,
                              hintText: "House Name:",
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
                            controller: citycontroller,
                            decoration: InputDecoration(
                              labelText: citycontroller.text,
                              hintText: "City:",
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
                            controller: pincontroller,
                            decoration: InputDecoration(
                              labelText: pincontroller.text,
                              hintText: "Pin Code:",
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
                            controller: discontroller,
                            decoration: InputDecoration(
                              labelText: discontroller.text,
                              hintText: "District:",
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


    ) ;
  }
}