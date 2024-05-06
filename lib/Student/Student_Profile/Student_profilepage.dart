
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Apis&URLs/API.dart';

import 'package:flutter_apex_academia/Student/Student_Profile/Student_address.dart';
import 'package:flutter_apex_academia/Student/Student_Profile/Student_basicinfo.dart';
import 'package:flutter_apex_academia/Student/Student_Profile/Student_contactedit.dart';
import 'package:flutter_apex_academia/Student/Student_cert.dart';
import 'package:google_fonts/google_fonts.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
   
var personaldatas=[];
  List support=["Suggestion","About us"];
  List legal=["Terms and conditions","Logout"];
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   StudentProfile1();
  }
  
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      appBar: AppBar(
         automaticallyImplyLeading: false,
         leading: InkWell(child: Icon(Icons.arrow_back_sharp,size: 30,),onTap:(){Navigator.pop(context);},),
        title: Text("Profile",style:GoogleFonts.poppins(fontWeight: FontWeight.w500)),
        
      ),
      body:SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
           ListTile(
            title:  Text("Amal",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 16),)
                  
                 , subtitle:Text("amalgs6282@gmail.com",style: TextStyle(fontSize: 14),),
                 trailing: InkWell(
                  onTap: () {
                  
                  },
                   child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage("asset/profilephoto.jpg"),
                   ),
                 ),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: Text("Profile completeness",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15),
             child: Row(
              children: [ 
                Expanded(
                  child: Container(
                    
                    height: 4,
                    color: Color.fromARGB(255, 68, 206, 72),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                
                Text("100%",style:GoogleFonts.poppins(fontSize: 12)
                //  TextStyle(
                //   fontSize: 12
                // ),
                ),
                
              ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15),
             child: Text("Last certified on:7/02/2024",style: TextStyle(color: const Color.fromARGB(255, 92, 91, 91),fontSize: 12),),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15,top: 25,bottom: 15),
             child: Container(
              
              child: ExpansionTile(title:
               Text("Personal information")
               ,children: [ 
                 ExpansionTile(title: Text("Basic information")
                 ,children: [
                  SingleChildScrollView(
                 
                    
                    child: Column(
                      children: [ 
                        Container(
                          height: 1,
                          color: const Color.fromARGB(255, 240, 239, 239),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Title:"),SizedBox(width:MediaQuery.of(context).size.width/3.5,),Text(
                                result[0]["title"]
                                )
                            ],
                          ),
                        ) , Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("First Name:"),SizedBox(width:MediaQuery.of(context).size.width/5.6,),Text(
                                result[0]["fname"]
                                )
                            ],
                          ),
                        ) 
                        , Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Last Name:"),SizedBox(width:MediaQuery.of(context).size.width/5.6,),Text(
                                result[0]["lname"]
                                )
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("DOB:"),SizedBox(width:MediaQuery.of(context).size.width/3.4,),Text(
                                result[0]["dob"]
                                )
                            ],
                          ),
                        ) ,
                          Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Gender:"),SizedBox(width:MediaQuery.of(context).size.width/4.1,),Text("uuuuuuuuuu/")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Nationality:"),SizedBox(width:MediaQuery.of(context).size.width/5.4,),Text(
                                result[0]["nationality"]
                                )
                            ],
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Blood Group:"),SizedBox(width:MediaQuery.of(context).size.width/6.2,),Text(
                                result[0]["bldgrp"]
                                )
                            ],
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Place of Birth:"),SizedBox(width:MediaQuery.of(context).size.width/6.9,),Text(
                                result[0]["pob"]
                                )
                            ],
                          ),
                        ),
                           Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("State of Birth:"),SizedBox(width:MediaQuery.of(context).size.width/6.6,),Text(
                                result[0]["sob"]
                                )
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Religion:"),SizedBox(width:MediaQuery.of(context).size.width/4.2,),Text(
                                result[0]["religion"]
                                )
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Height(in CMs):"),SizedBox(width:MediaQuery.of(context).size.width/8.3,),Text(
                                result[0]["hight"]
                                )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Weight(in KGs):"),SizedBox(width:MediaQuery.of(context).size.width/7.9,),Text(
                                result[0]["weight"]
                                )
                            ],
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Mother Toungue:"),SizedBox(width:MediaQuery.of(context).size.width/9.6,),Text(
                                result[0]["ml"]
                                )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [ 
                              Text("Caste:"),SizedBox(width:MediaQuery.of(context).size.width/3.5,),Text(
                                result[0]["cast"]
                                )
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [ 
                          
                          
                            Expanded(child: 
                            SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: InkWell(
                                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) =>basicinformation(),),);},
                                child: Container(
                                  
                                  height: MediaQuery.of(context).size.height/16
                                  ,width:MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 197, 148, 4),
                                  ),
                                  child: Center(child: Text("Edit",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),)),
                                ),
                              ),
                            )
                          ],
                        )
                        
                    
                      ],
                    ),
                  )


                 ],
                 ),
                 ExpansionTile(title: Text("Contact information")
                 ,children: [
                   Container(
                          height: 1,
                          color: const Color.fromARGB(255, 240, 239, 239),
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,bottom: 15),
                    child: Row(
                      children: [ 
                        Text("Email:")
                        ,SizedBox(
                          width: MediaQuery.of(context).size.width/3.5,
                        )
                        ,Text(result[0]["email"])
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,bottom: 15),
                    child: Row(
                      children: [ 
                        Text("Phone No:")
                        ,SizedBox(
                          width: MediaQuery.of(context).size.width/4.6,
                        )
                        ,Text(result[0]["phone"])
                      ],
                    ),
                  )
                  ,Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,bottom: 15)
                    ,
                    child: Row(
                      children: [ 
                        Text("Secondary phone No:")
                        ,SizedBox(
                          width: MediaQuery.of(context).size.width/25.9,
                        )
                        ,Text(result[0]["sphone"])
                      ],
                    ),
                  ), Row(
                          children: [ 
                          
                          
                            Expanded(child: 
                            SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: InkWell(
                                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactEdit(),),);},
                                child: Container(
                                  
                                  height: MediaQuery.of(context).size.height/16
                                  ,width:MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 197, 148, 4),
                                  ),
                                  child: Center(child: Text("Edit",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),)),
                                ),
                              ),
                            )
                          ],
                        ),
                 ],
                 
                 ),
                 ExpansionTile(title: Text("Address")
                ,children: [ 
                   Container(
                          height: 1,
                          color: const Color.fromARGB(255, 240, 239, 239),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [ 
                              Text("House Name:")
                              ,SizedBox(
                                width: MediaQuery.of(context).size.width/6.1,
                              )
                              ,Text(result[0]["house"])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [ 
                              Text("City:")
                              ,SizedBox(
                                width: MediaQuery.of(context).size.width/3.2,
                              )
                              ,Text(result[0]["city"])
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [ 
                              Text("Pin code:")
                              ,SizedBox(
                                width: MediaQuery.of(context).size.width/4.3,
                              )
                              ,Text(result[0]["pin"])
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [ 
                              Text("District:")
                              ,SizedBox(
                                width: MediaQuery.of(context).size.width/3.9,
                              )
                              ,Text(result[0]["district"])
                            ],
                          ),
                        ), Row(
                          children: [ 
                          
                          
                            Expanded(child: 
                            SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: InkWell(
                                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) =>AddressEdit(),),);},
                                child: Container(
                                  
                                  height: MediaQuery.of(context).size.height/16
                                  ,width:MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 197, 148, 4),
                                  ),
                                  child: Center(child: Text("Edit",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),)),
                                ),
                              ),
                            )
                          ],
                        )
                ], 
                 )
               ],
               )
              , decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)
              ,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1)]),),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15,),
             child: Container(child: ExpansionTile(title: Text("Achievements")) , decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)
                ,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1)]),),
           ),
             
           Padding(
             padding: const EdgeInsets.all(15),
             child: Container(child: ExpansionTile(title: Text("Certificates")
             ,children: [ 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Container(
                          height: 1,
                         color:  const Color.fromARGB(255, 240, 239, 239),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Please add Certificates"),
                  ),Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15,
                            bottom: 15),
                            child: Container(
                              height:  MediaQuery.of(context).size.height/16,
                               width:MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 197, 148, 4),)
                          
                          ,child: InkWell(
                           onTap:(){ Navigator.push(context,MaterialPageRoute(builder:(context) => FilePickerDemo(),));},
                            
                            child: Center(child: Text("Add",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),))),
                            ),
                          ),
                        )
                ],
              )

             ],
             
             
             
             ) , decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)
                ,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1)]),),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: Text("Support",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
           )
           ,ListView.builder(
            itemCount: 2,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
             return Padding(
               padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
               child: Container(
                 child: ListTile(
                  title: Text(support[index]),
                 ),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)
                  ,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1)]),
               ),
             );
           },)
           , Padding(
             padding: const EdgeInsets.all(15),
             child: Text("Legal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
           ),
           ListView.builder(
            itemCount: 2,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
             return Padding(
               padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
               child: Container(
                 child: ListTile(
                  title: Text(legal[index]),
                 ),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)
                  ,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1)]),
               ),
             );
           },),
           SizedBox(
            height: MediaQuery.of(context).size.height/15,
           )

          ],
        ),
      ),
    );
    
  }
 























  var result=[];
  void StudentProfile1() async{

    result =await Apiclass().StudentProfile() ;
          print("hello");
   print("gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg $result");
   print(result.runtimeType);
   print(result[0]["fname"]);
    print("ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo$personaldatas");
    
   setState(() {

   
  
   
  // Fname=result.fname.toString();
  // Lname=result.lname.toString();
  // Dob=result.dob.toString();
  // Gender=result.gender.toString();
  // Nati=result.nationality.toString();
  // Bg=result.bldgrp.toString();
  // Pob=result.pob.toString();
  // Sob=result.sob.toString();
  // Religion=result.religion.toString();
  // Height=result.hight .toString();
  // Weight=result.weight.toString();
  // Mt=result.ml.toString();
  // Caste=result.cast.toString();

   });
  }
  
}
