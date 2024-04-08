import 'package:flutter/material.dart';


class forgotPasswordPage extends StatefulWidget {
  const forgotPasswordPage({super.key});

  @override
  State<forgotPasswordPage> createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          SizedBox(height: MediaQuery.of(context).size.height/10,),
          Center(
            child: Text("Forgot Password",style: TextStyle(fontSize: 37,
            color:Color.fromARGB(245, 210, 162, 6,),
            fontWeight: FontWeight.w500,),),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height/12,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(hintText: "Enter email",
                border: OutlineInputBorder()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height/12,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text("Submit",style:
                 TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
              ),
            ),
          )
        ],
      ),
    );
  }
}