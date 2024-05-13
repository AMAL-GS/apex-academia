import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Apis&URLs/API.dart';
import 'package:flutter_apex_academia/Student/Student_home.dart';
import 'package:flutter_apex_academia/Student/Student_homepage.dart';


import 'package:flutter_apex_academia/contactus.dart';
import 'package:flutter_apex_academia/forgotpassword.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:motion_toast/motion_toast.dart';

class Studentlogin extends StatefulWidget {
  
 Studentlogin({super.key,});

  @override
  State<Studentlogin> createState() => _loginState();
}
    var Studentacademyidcontroller=TextEditingController();
    var Studentpasswordcontroller=TextEditingController();
class _loginState extends State<Studentlogin> {
  void toggleShowpassword(){
    
  }



  @override
  Widget build(BuildContext context) {

    bool showpassword=false;

    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        
          
          children: [ 
            SizedBox(
              height: MediaQuery.of(context).size.height/5,
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              width: double.infinity,
              
             child: SingleChildScrollView(
               child: Column(
                children: [ 
                  Text("apex academia",style:GoogleFonts.poppins(fontSize: 27,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/70,
                    
                    width: double.infinity,
                  ),
                  Text("Log into your account",style: TextStyle(color: Color.fromARGB(255, 12, 12, 12),fontWeight:FontWeight.w400,fontSize: 15),),
                 SizedBox(
                  height: MediaQuery.of(context).size.height/17,
                    width: double.infinity,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Row(
                     children: [
                       Text("Academy id",style: TextStyle(fontSize: 15,color: Colors.black),),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 15,top: 10,
                   bottom: 15),
                   child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      
                    ),
                    controller: Studentacademyidcontroller,
            
                   ),
                 ),
                   Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Row(
                     children: [
                       Text("Password",style: TextStyle(fontSize: 15,color: Colors.black),),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 15,top: 10,
                   bottom: 15),
                   child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon:Icon(showpassword?Icons.visibility:Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            showpassword=!showpassword;
                          });
                        },)
                      
                    ),
                    controller: Studentpasswordcontroller,
                   ),
                 ),
                 Row(
                   children: [
                    SizedBox(
                      height: 1,
                      width: MediaQuery.of(context).size.width/1.68,
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right:10,top: 0,
                       
                       ),
                       child: InkWell(child: Text("forgot password?",style: TextStyle(color: const Color.fromARGB(255, 15, 112,192)),),
                       onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>forgotPasswordPage()));
                       },),
                     ),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                  child: InkWell(onTap: StudentloginPost,
                    child: Container(
                       height: MediaQuery.of(context).size.height/11,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10) ,color:Color.fromARGB(245, 210, 162, 6),
                      ),
                      child: Center(
                        child: Text("Login",style: TextStyle(
                          fontSize: 22,
                          fontWeight:FontWeight.w500,
                          color: Colors.black
                        
                        ),),
                      ),
                    ),
                  ),
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("need help?",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 65, 64, 64)),),
                    TextButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ContactUsPage())
                    );}, child:Text("Contact Us",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 15, 112, 191)),))
                  ],
                 )


                  
                ],
               ),
             ),
            )
            
          ],
        ),
      ),
    );
  }
   void StudentloginPost() async {
    final username = Studentacademyidcontroller.text;
    final password = Studentpasswordcontroller.text;
    if (username.isEmpty) {
      showErrorMessage("Please enter Username"); 
    } else if (password.isEmpty) {
      showErrorMessage("Please enter Password");
    } else {
      final formData1 =
          FormData.fromMap({"acid": username, "password": password});
      final result = await Apiclass().StudentLoginApi(formData1);

      if (result != null) {
        
     
          showSuccessMessage("succsessfully Logged");
          Navigator.push(context,MaterialPageRoute(builder: (context) => homePage(),));
  
      } else {
        showErrorMessage("Login failed :)");
      }
      }
    }
    
  

  void showErrorMessage(String message) {
    MotionToast.error(
      title: Text("Error"),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }

  void showSuccessMessage(String message) {
    MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }
}
