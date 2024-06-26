import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_apex_academia/Student/Student_notification.dart';
import 'package:flutter_apex_academia/teacher/attendencepage.dart';
import 'package:flutter_apex_academia/teacher/searchpage.dart';
import 'package:flutter_apex_academia/teacher/teacher_profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Teacher_home extends StatefulWidget {
  const Teacher_home({super.key});

  @override
  State<Teacher_home> createState() => _Teacher_homeState();
}

class _Teacher_homeState extends State<Teacher_home> {
    ScrollController _scrollViewController1 = ScrollController();
  bool _showAppbar1 = true;
  bool isScrollingDown1 = false;
  void initState() {
    super.initState();
    _scrollViewController1 = new ScrollController();
    _scrollViewController1.addListener(() {
      if (_scrollViewController1.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown1) {
          isScrollingDown1 = true;
          _showAppbar1 = false;
          setState(() {});
        }
      }

      if (_scrollViewController1.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown1) {
          isScrollingDown1 = false;
          _showAppbar1 = true;
          setState(() {});
        }
      }
    });
  }
  List<String>dailylearningpics=["asset/mathsproject.jpg","asset/physiscsproject.jpeg",
  "asset/teacherproject.jpeg","asset/teacherproject1.jpeg","asset/teacherproject2.jpg",
  "asset/teacherproject3.jpeg","asset/teacherproject4.jpeg","asset/teacherproject5.jpeg",
  "asset/teacherproject7.jpg","asset/teacherproject8.jpeg"

  ];
  List<String>subjectnames=["English","Malayalam","Science","Maths","Physiscs","Social","Chemistry",
  "Computer","Hindi","Biology"];
  @override
  Widget build(BuildContext context) {
    List<String>subjectsteacher=["Social","Physics","Physics","Social","Social","Physics","Physics",];
    List<String>Classes=["10th B","10th A","10th C","10th E","10th G","10th D","10th F", ];
    List<String>Periods=["1st period","2nd period","3rd period","4th period","5th period","6th period","7th period"];
     final List<ChartData1> histogramData = <ChartData1>[
        ChartData1(5.250),
        ChartData1(7.750),
        ChartData1(0.0),
        ChartData1(8.275),
        ChartData1(9.750),
        ChartData1(7.750),
        ChartData1(8.275),
        ChartData1(6.250),
        ChartData1(5.750),
        ChartData1(5.250),
        ChartData1(23.000),
        ChartData1(26.500),
        ChartData1(26.500),
        ChartData1(27.750),
        ChartData1(25.025),
        ChartData1(26.500),
        ChartData1(28.025),
        ChartData1(29.250),
        ChartData1(26.750),
        ChartData1(27.250),
        ChartData1(26.250),
        ChartData1(25.250),
        ChartData1(34.500),
        ChartData1(25.625),
        ChartData1(25.500),
        ChartData1(26.625),
        ChartData1(36.275),
        ChartData1(36.250),
        ChartData1(26.875),
        ChartData1(40.000),
        ChartData1(43.000),
        ChartData1(46.500),
        ChartData1(47.750),
        ChartData1(45.025),
        ChartData1(56.500),
        ChartData1(56.500),
        ChartData1(58.025),
        ChartData1(59.250),
        ChartData1(56.750),
        ChartData1(57.250),
        ChartData1(46.250),
        ChartData1(55.250),
        ChartData1(44.500),
        ChartData1(45.525),
        ChartData1(55.500),
        ChartData1(46.625),
        ChartData1(46.275),
        ChartData1(56.250),
        ChartData1(46.875),
        ChartData1(43.000),
        ChartData1(46.250),
        ChartData1(55.250),
        ChartData1(44.500),
        ChartData1(45.425),
        ChartData1(55.500),
        ChartData1(56.625),
        ChartData1(46.275),
        ChartData1(56.250),
        ChartData1(46.875),
        ChartData1(43.000),
        ChartData1(46.250),
        ChartData1(55.250),
        ChartData1(44.500),
        ChartData1(45.425),
        ChartData1(55.500),
        ChartData1(46.625),
        ChartData1(56.275),
        ChartData1(46.250),
        ChartData1(56.875),
        ChartData1(41.000),
        ChartData1(63.000),
        ChartData1(66.500),
        ChartData1(67.750),
        ChartData1(65.025),
        ChartData1(66.500),
        ChartData1(76.500),
        ChartData1(78.025),
        ChartData1(79.250),
        ChartData1(76.750),
        ChartData1(77.250),
        ChartData1(66.250),
        ChartData1(75.250),
        ChartData1(74.500),
        ChartData1(65.625),
        ChartData1(75.500),
        ChartData1(76.625),
        ChartData1(76.275),
        ChartData1(66.250),
        ChartData1(66.875),
        ChartData1(80.000),
        ChartData1(85.250),
        ChartData1(87.750),
        ChartData1(89.000),
        ChartData1(88.275),
        ChartData1(89.750),
        ChartData1(97.750),
        ChartData1(98.275),
        ChartData1(96.250),
        ChartData1(95.750),
        ChartData1(95.250)
        ];
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 249, 247, 247),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              height: _showAppbar1 ? 56.0 : 0.0,
              duration: Duration(milliseconds: 200),
              child: AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  'apex academia',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                actions: <Widget>[
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                  //   },
                  //   child: Icon(Icons.search,size: 30,)),
                 InkWell(child: 
                   Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                    
                                     ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => NotificationPage(),));
                  },
                 ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  InkWell(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                    },
                    child: Container(
                     
                      height: MediaQuery.of(context).size.height/35,
                      width: MediaQuery.of(context).size.width/6,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                     
                      border: Border.all(color: Color.fromARGB(255, 121, 119, 119))),
                      child: Center(
                        child: Text("Students",style: TextStyle(fontSize: 12),),
                      ),
                    ),
                  //   child: CircleAvatar(
                  //     backgroundImage: AssetImage("asset/profilephoto.jpg"),
                  //     radius: 25,
                  //   ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollViewController1,
                physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 229, 229),
                                  spreadRadius: 0.2,
                                  blurRadius: 1)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 30),

                              child: Row(
                                children: [ 
                                  Text("Monthly Attendence",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width/6
                                    ,
                                  ),
                                  Text("<",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                  Text(" sept 2022 "),
                                   Text(">",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                ], 
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width/1.3,),
                                CircleAvatar(backgroundColor: Color.fromARGB(255, 128, 103, 31),
                                radius: 3,),
                                Text("  Avg no.",style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/20,
                            ),
                            

                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                height: MediaQuery.of(context).size.height/2.9,
                                child: SfCartesianChart(series: <CartesianSeries>[
                                                    HistogramSeries<ChartData1, double>(
                                                    dataSource: histogramData,
                                                    
                                                    showNormalDistributionCurve: true,
                                                    curveColor: Color.fromARGB(255, 141, 116, 41),
                                                    binInterval: 20,
                                                    pointColorMapper: (datum, index) => Color.fromARGB(255, 246, 215, 131),
                                                    sortFieldValueMapper: (datum, index) => ValueKey(20),
                                                    yValueMapper: (ChartData1 data, _) => data.y)]
                                                    ,backgroundColor: Colors.white,
                                                    
                                                     ),
                              ),
                            ),
                          ],
                        )
                  
                        // Image(
                        //   image: AssetImage("asset/graph.png"),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "upcoming class",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListView.builder(
                      itemCount: 7,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 218, 218, 218),
                                      spreadRadius: 0.2,
                                      blurRadius: 1)
                                ]),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: MediaQuery.of(context).size.height / 70,
                                  left: MediaQuery.of(context).size.width / 30,
                                  child: SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 15,
                                    width:
                                        MediaQuery.of(context).size.width / 6,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3),
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(30),
                                        child: Image.asset(
                                          "asset/glob1.webp",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top:
                                        MediaQuery.of(context).size.height / 80,
                                    left:
                                        MediaQuery.of(context).size.width / 4.3,
                                    child: Text(
                                     subjectsteacher[index],
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 183, 138, 3),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )),
                                Positioned(
                                  left:
                                        MediaQuery.of(context).size.width / 4.3,
                                        top: MediaQuery.of(context).size.height/27,
                                    child: Text(
                                  Classes[index],
                                  style: TextStyle(fontSize: 14),
                                )),
                                Positioned(
                                   left:MediaQuery.of(context).size.width / 4.3,
                                        top: MediaQuery.of(context).size.height/17,
                                  child: Text(Periods[index],style: TextStyle(fontSize: 11),)),
                                  Positioned(
                                     left:
                                        MediaQuery.of(context).size.width /  1.2,
                                        top: MediaQuery.of(context).size.height/29,
                                    child: Icon(Icons.arrow_circle_right_outlined,
                                    color: const Color.fromARGB(255, 197, 148, 2),size: 30,))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Daily learning",style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/4.6,
                      
                      
                      child: ListView.builder(
                      shrinkWrap: true,
                                     
                       scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10,),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height/5,
                            width: MediaQuery.of(context).size.width/3.1,
                            child: SizedBox(
                                            
                              child: Card(
                                color: Colors.black,
                                 child: Stack(
                                  children: [ 
                                     ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(MediaQuery.of(context).size.width/3.1),
                                        child: Image.asset(
                                          dailylearningpics[index],
                                          fit: BoxFit.cover,
                                          
                                        ),
                                      ),
                                    ),
                                    Container(
                                     height: MediaQuery.of(context).size.height/4.6,
                                     width: MediaQuery.of(context).size.width/3.1
                                     ,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        begin: Alignment.center,
                                        end: Alignment.bottomCenter,
                                        stops: [
                                          .3,
                                          0.5
                                        ],
                                        colors:[Colors.black.withOpacity(0.1),Colors.black.withOpacity(0.6)])
                                     ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: MediaQuery.of(context).size.width/14,
                                      child: Text(subjectnames[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),))
                                  ],
                                 ),
                              ),
                            )),
                        );
                      },),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
class ChartData1 {
        ChartData1(this.y);
        final double y;
    }