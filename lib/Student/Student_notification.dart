import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  List<String>notimessages=[
"Attendence Low",
"Public exam date published",
"Afternoon assembly at auditorium "

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 235, 235),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_sharp,size: 30,)),
        title: Text("Notification",style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,
          children: [ 
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("New",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            ListView.builder(
             physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(color: const Color.fromARGB(255, 254, 254, 254),
                height: MediaQuery.of(context).size.height/10.5,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/teacherpic.jpeg"),
                      
                    ),
                    title: Text(notimessages[index],style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                    subtitle: Row(
                      children: [
                        Text("class teacher"),
                        Text("09:50 AM")
                      ],
                    ),
                    trailing:
                       ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(MediaQuery.of(context).size.width/14),
                                        child: Image.asset(
                                       "asset/notipic.jpeg"
                                          ,fit: BoxFit.cover,
                                          
                                        ),
                                      ),
                                    ),)
                  
                
                  ),
                  
                
              );
            },),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Last 7 days",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
            ),  ListView.builder(
             physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(color: const Color.fromARGB(255, 254, 254, 254),
                height: MediaQuery.of(context).size.height/10.5,
                  child: ListTile(
                    leading: CircleAvatar(
                     backgroundImage: AssetImage("asset/teacherpic.jpeg"),
                      
                    ),
                    title: Text(notimessages[index],style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                    subtitle: Row(
                      children: [
                        Text("class teacher",style: TextStyle(fontWeight: FontWeight.w400),),
                        Text(" 09:50 AM")
                      ],
                    ),
                    trailing:
                       ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(MediaQuery.of(context).size.width/14),
                                        child: Image.asset(
                                       "asset/notipic.jpeg"
                                          ,fit: BoxFit.cover,
                                          
                                        ),
                                      ),
                                    ),)
                  
                
                  ),
                  
                
              );
            },),
          ],
        ),
      ),
    );
  }
}