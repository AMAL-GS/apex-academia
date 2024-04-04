import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
    final List<String> myCoolStrings = ["ANUNANDHANA","SUBIN","ARUN","NITHEESH",
    "ANANDHU","RAJISHA","RAMISHA","ANAKHA","SIVANI","NAJA","MIMMINI","ZIA",
    "SIVAGANGA",
    "ABHIJITH","ABHINANDH","RIDHUN","ANOOP","ANI","ANISH","ANUSHA","ANSHAF",
    "ANAS","AMAL","AKASH K","AKASH P","AKSHAY","AJITH","RAHUL","DEEPIKA",
    "SUSU","KRIPA","CHANDRAN","AMALA","SURYA","SOYA",
    "DHANESH","MAHIN","DHARSHITH","DEVANANDHA","DEVANJANA","GEET","AACHI ","NEHA",
    "DHRASHTI","SREESHMA","VRINDHA",'Some other item'
  ];

  final List<String> _results = [];

  void _handleSearch(String input) {
    _results.clear();
    for (var str in myCoolStrings) {
      if (str.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _results.add(str);
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      appBar: AppBar(title: const Text("Students",style: TextStyle(fontWeight: FontWeight.w500),), 
       backgroundColor: const Color.fromARGB(255, 240, 239, 239),),
      
      body: Column(
        children: [
          SizedBox(
            
            height: 45,
            width: 360,
            child: TextField(
              onChanged: _handleSearch,
              style: GoogleFonts.poppins(
                color: const Color(0xff020202),
                fontSize: 20,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search by name or roll no",
                hintStyle: GoogleFonts.poppins(
                    color: const Color(0xffb2b2b2),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    decorationThickness: 6),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: _results.isEmpty
                ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: GridView.count(crossAxisCount: 4
                             , children: List.generate(_results.length, (index){
                                return Center(
                                 child: Padding(
                   padding: const EdgeInsets.all(4),
                   child: Container(
                    color: Colors.black,
                   height:MediaQuery.of(context).size.height/10,
                      width: MediaQuery.of(context).size.width/5,
                   ),
                                 ));   
                                
                              }),
                  ),
                )
                :Padding(
                  padding: const EdgeInsets.all(2),
                  child: GridView.count(crossAxisCount: 4
                  , children: List.generate(_results.length, (index){
                                return Center(
                                 child: Padding(
                   padding: const EdgeInsets.all(4),
                   child: Container(
                  
                            height:MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/5,
                   color: Colors.white,
                    child: Column(
                      children: [ 
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(255, 8, 8, 8),
                        )
                        ,Text(myCoolStrings[index],style: TextStyle(fontSize: 10),)
                      ],
                    ),
                   ),
                                 ));   
                                
                              }),
                  ),
                )
          ),
        ],
      ),
    );
  }
}