import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class logout extends StatefulWidget {
  const logout({super.key});

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        children: [ 
          Text("are you sure"),
          Row( children: [ 
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child:Text("No")),
            ElevatedButton(onPressed: (){
            
       logoutusername4();
            }, child: Text("Yes"))
          ],)
        ],
      ),
    );
  }
  Future <void> logoutusername4() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.remove("Username1");
    Navigator.push(context,MaterialPageRoute(builder: (context) => homescreen(),));
  }
}