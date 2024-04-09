import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/calenderevent.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Teacher_events extends StatefulWidget {
  const Teacher_events({super.key});

  @override
  State<Teacher_events> createState() => _Teacher_eventsState();
}

class _Teacher_eventsState extends State<Teacher_events> {
   late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();
  TextEditingController _descriptioncontroller = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 247, 247),
        automaticallyImplyLeading: false,
        title: Text(
          "Events",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 8,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        "Select date",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 99, 99, 99)),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            // Formatted Date
                            DateFormat.MMMEd()

                                // displaying formatted date
                                .format(DateTime.now()),
                            style: TextStyle(

                                // Styling text
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Add Event"),
                                  content: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: _eventController,
                                          decoration: InputDecoration(
                                              hintText: "enter event title"),
                                        ),
                                        TextFormField(
                                          controller: _descriptioncontroller,
                                          decoration: InputDecoration(
                                              hintText:
                                                  "enter event description"),
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("Cancel"),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                    TextButton(
                                      child: Text("Ok"),
                                      onPressed: () {
                                        if (_eventController.text.isEmpty) {
                                        } else {
                                          if (selectedEvents[selectedDay] !=
                                              null) {
                                            selectedEvents[selectedDay]!.add(
                                              Event(
                                                  title: _eventController.text,
                                                  description:
                                                      _descriptioncontroller
                                                          .text),
                                            );
                                          } else {
                                            selectedEvents[selectedDay] = [
                                              Event(
                                                  title: _eventController.text,
                                                  description:
                                                      _descriptioncontroller
                                                          .text)
                                            ];
                                          }
                                        }
                                        Navigator.pop(context);
                                        _eventController.clear();
                                        setState(() {});
                                        return;
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.edit_outlined,
                              size: 25,
                              color: Colors.black,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 2,
                color: Color.fromARGB(255, 210, 209, 209),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.white,
                ),
                child: TableCalendar(
                  headerVisible: true,
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                  },

                  focusedDay: selectedDay,
                  firstDay: DateTime(1990),
                  lastDay: DateTime(2050),
                  calendarFormat: format,
                  onFormatChanged: (CalendarFormat _format) {
                    setState(() {
                      format = _format;
                    });
                  },
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  daysOfWeekVisible: true,

                  //Day Changed
                  onDaySelected: (DateTime selectDay, DateTime focusDay) {
                    setState(() {
                      selectedDay = selectDay;
                      focusedDay = focusDay;
                    });
                    print(focusedDay);
                  },
                  selectedDayPredicate: (DateTime date) {
                    return isSameDay(selectedDay, date);
                  },

                  eventLoader: _getEventsfromDay,

                  //To style the Calendar
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    selectedDecoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 173, 20),
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(5.0),
                    ),
                    selectedTextStyle: TextStyle(color: Colors.white),
                    todayDecoration: BoxDecoration(
                      color: Color.fromARGB(255, 163, 163, 161),
                      shape: BoxShape.circle,
                      //  borderRadius: BorderRadius.circular(5.0),
                    ),
                    defaultDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(5.0),
                    ),
                    weekendDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      //borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            ..._getEventsfromDay(selectedDay).map((Event event) =>
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 14,
                              backgroundColor:
                                  Color.fromARGB(255, 245, 237, 198),
                              child: Column(
                                children: [
                                  Text(
                                    // Formatted Date
                                    DateFormat.d()

                                        // displaying formatted date
                                        .format(selectedDay),
                                    style: TextStyle(

                                        // Styling text
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.black),
                                        
                                  ),
                                  
                                  Text(
                                    // Formatted Date
                                    DateFormat.MMM()

                                        // displaying formatted date
                                        .format(selectedDay),
                                    style: TextStyle(

                                        // Styling text
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color:
                                            Color.fromARGB(255, 168, 140, 56)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 25,
                            ),
                            Container(
                                height: MediaQuery.of(context).size.height / 13,
                                width: MediaQuery.of(context).size.width / 1.4,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: MediaQuery.of(context).size.height /
                                          120,
                                      left: MediaQuery.of(context).size.width /
                                          25,
                                      child: Text(
                                        event.title,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Positioned(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                25,
                                        left:
                                            MediaQuery.of(context).size.width /
                                                25,
                                        child: Text(
                                          event.description,
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 115, 115, 115)),
                                        ))
                                  ],
                                )
                              
                                ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}