import 'package:flutter/material.dart';
import 'package:graduation/presentation/aml/profile.dart/payment.dart';

import 'package:table_calendar/table_calendar.dart';

class appointment extends StatefulWidget {
  const appointment({super.key});

  @override
  State<appointment> createState() => _appointmentState();
}

DateTime today = DateTime.now();

bool int_1 = true;
bool int_2 = true;
bool int_3 = true;
bool int_4 = true;
bool int_5 = true;
bool int_6 = true;
bool int_7 = true;
bool int_8 = true;
bool int_9 = true;

class _appointmentState extends State<appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book an Appointment"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 25, right: 25),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.612),
                  borderRadius: BorderRadius.circular(20)),
              child: TableCalendar(
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2025, 12, 31),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available time Slot",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 50,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15),
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_1
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_1 = !int_1;
                          });
                        },
                        child: Text(
                          "10 AM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_2
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_2 = !int_2;
                          });
                        },
                        child: Text(
                          "2 AM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_3
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_3 = !int_3;
                          });
                        },
                        child: Text(
                          "4 PM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_4
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_4 = !int_4;
                          });
                        },
                        child: Text(
                          "3 PM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_5
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_5 = !int_5;
                          });
                        },
                        child: Text(
                          "5 PM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_6
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_6 = !int_6;
                          });
                        },
                        child: Text(
                          "7 PM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_7
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_7 = !int_7;
                          });
                        },
                        child: Text(
                          "11 AM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_8
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_8 = !int_8;
                          });
                        },
                        child: Text(
                          "10 PM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.4, color: Colors.grey)),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: int_9
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 125, 177),
                        ),
                        onPressed: () {
                          setState(() {
                            int_9 = !int_9;
                          });
                        },
                        child: Text(
                          "8 PM",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[400]),
                        )),
                  ),
                )
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              ],
            ),

            Container(
              height: 85,
              padding: EdgeInsets.only(top: 35),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 61, 125, 177),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => payment()),
                  );
                },
                child: Text(
                  "Set Appointment",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
