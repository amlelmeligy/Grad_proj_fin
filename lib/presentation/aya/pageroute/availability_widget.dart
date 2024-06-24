import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';

class AvailabilityWidget extends StatefulWidget {
  const AvailabilityWidget({super.key});

  @override
  State<AvailabilityWidget> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<AvailabilityWidget> {
  bool mon = true;
  bool sun = false;
  bool sat = false;
  bool tue = false;
  bool wed = false;
  bool thu = false;
  bool fri = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: Text(
                  'Availability',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(54, 224, 224, 224)
                          .withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(22, 0, 255, 255),
                      ),
                      child: const Text(
                        'Specific hours',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 57, 73),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: const Text(
                        'Always Available',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.info_outline_rounded),
                        Text(
                          'Set your availability to start attending patients',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(172, 0, 49, 49),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 35, bottom: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Add hours of your availability',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Monday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: mon,
                            onChanged: (val) {
                              setState(() {
                                mon = val;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Sunday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: sun,
                            onChanged: (val) {
                              setState(() {
                                sun = val;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Saturday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: sat,
                            onChanged: (val) {
                              setState(() {
                                sat = val;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Tuesday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: tue,
                            onChanged: (val) {
                              setState(() {
                                tue = val;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Wednesday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: wed,
                            onChanged: (val) {
                              setState(() {
                                wed = val;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Thursday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: thu,
                            onChanged: (val) {
                              setState(() {
                                thu = val;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Friday',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        Switch(
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveThumbColor:
                                const Color.fromARGB(255, 0, 1, 55),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 235, 235, 235),
                            value: fri,
                            onChanged: (val) {
                              setState(() {
                                fri = val;
                              });
                            })
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ))
      ]),
    ));
  }
}
