
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var categorycontroller = TextEditingController();
var StartingDateController = TextEditingController();
var StartingTimeController = TextEditingController();
var EndDateController = TextEditingController();
var EndTimeController = TextEditingController();
var Reasoncontroller = TextEditingController();
//
// DATE/TIME Picker operations
//
//  Starting Date operation
//

DateTime selectedStartDate = DateTime.now();
Future<void> selectStartDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedStartDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null && picked != selectedStartDate) {
    selectedStartDate = picked;
    // DateTime now = DateTime.now();
    String formmattedStartDate =
        DateFormat("yyyy-MM-dd").format(selectedStartDate);
    StartingDateController.text = formmattedStartDate.toString();
  }
}

//
// END Date operation
//
DateTime selectedEndDate = DateTime.now();
Future<void> selectEndDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedEndDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null && picked != selectedEndDate) {
    selectedEndDate = picked;
    // DateTime now = DateTime.now();
    String formattedEndDate = DateFormat("yyyy-MM-dd").format(selectedEndDate);
    EndDateController.text = formattedEndDate.toString();
  }
}

// TIME PICKER
//
// Start Time Operation
//
TimeOfDay selectedStartTime = TimeOfDay.now();

Future<void> selectStartTime(BuildContext context) async {
  final TimeOfDay? picked_s = await showTimePicker(
      context: context,
      initialTime: selectedStartTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      });
  if (picked_s != null && picked_s != selectedStartTime)
    selectedStartTime = picked_s;
  DateTime now = DateTime.now();
  String formattedStartTime = DateFormat.jms().format(now);
  StartingTimeController.text = formattedStartTime.toString();
}

//
// End Time Operation
//
TimeOfDay selectedEndTime = TimeOfDay.now();
Future<void> selectEndTime(BuildContext context) async {
  final TimeOfDay? picked_s = await showTimePicker(
      context: context,
      initialTime: selectedEndTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      });
  if (picked_s != null && picked_s != selectedEndTime)
    selectedEndTime = picked_s;
  DateTime now = DateTime.now();
  String formattedEndTime = DateFormat.jms().format(now);
  EndTimeController.text = formattedEndTime.toString();
}
//
// END OF DATE TIME SESSION

var category = ["Sick", "Casual", "etc"];
Future<dynamic> LeaveApplicationAlertbox(BuildContext context) {
  return showDialog(
      context: context,
      builder: (alert) => AlertDialog(
            title: Row(
              children: [
                Text(
                  "Leave Application",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
            insetPadding: EdgeInsets.zero,
            // overflow: Overflow.visible,
            content: Container(
              width: MediaQuery.of(context).size.width / 0.9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            hintText: "Category",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder()),
                        items: category.map((String category) {
                          return new DropdownMenuItem(
                              value: category, child: Text(category));
                        }).toList(),
                        onChanged: (String? newValue) {
                          // do other stuff with category
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: StartingDateController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  selectStartDate(context);
                                },
                                icon: Icon(Icons.calendar_month_outlined)),
                            hintText: "Starting Date",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: StartingTimeController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  selectStartTime(context);
                                },
                                icon: Icon(Icons.timer_outlined)),
                            hintText: "Starting Time",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: EndDateController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  selectEndDate(context);
                                  // print("llllllllllllllllll");
                                },
                                icon: Icon(Icons.calendar_month_outlined)),
                            hintText: "End Date",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: EndTimeController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  selectEndTime(context);
                                },
                                icon: Icon(Icons.timer_outlined)),
                            hintText: "End Time",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: Reasoncontroller,
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 1,
                        decoration: InputDecoration(
                            labelText: "Reason",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold),

                            // contentPadding:
                            // EdgeInsets.symmetric(vertical: 40.0)
                            border: OutlineInputBorder()),
                      ),
                    ),

                    // SUBMIT BUTTON

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height/20,
                          width: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 197, 148, 4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            actions: [],
          ));
}
