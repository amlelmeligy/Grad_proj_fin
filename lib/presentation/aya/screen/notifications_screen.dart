import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notifications_outlined)
                ],
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.notifications_active_outlined,
                        color: Color.fromARGB(193, 85, 0, 30),
                        size: 35,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upcoming Event',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '1 min ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'BrainBalance is organizing an event for all medicince practioners',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 35,
                        color: Color.fromARGB(193, 166, 0, 199),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upcoming Appoint..',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '10 min ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'You have a patient to attend in half an hour',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.chat_outlined,
                        size: 35,
                        color: Color.fromARGB(193, 18, 212, 0),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Message',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '1 hr ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'You have a unread message from Mike Brown',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.favorite_border_outlined,
                        size: 35,
                        color: Color.fromARGB(193, 255, 0, 0),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'We are verifying',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '10 min ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'Our professionals are taking a look at your KYC submission. We will get back to you in 24 hours.',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.money,
                        size: 35,
                        color: Color.fromARGB(193, 3, 174, 0),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review your wee....',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '10 min ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'Our professionals are taking a look at your KYC submission. We will get back to you in 24 hours.',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.book_outlined,
                        size: 35,
                        color: Color.fromARGB(193, 78, 102, 0),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review your wee...',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '10 min ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'Our professionals are taking a look at your KYC submission. We will get back to you in 24 hours.',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.signal_cellular_alt_outlined,
                        size: 35,
                        color: Color.fromARGB(172, 5, 19, 215),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review your wee...',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '10 min ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'Our professionals are taking a look at your KYC submission. We will get back to you in 24 hours.',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.note_alt_outlined,
                        size: 35,
                        color: Color.fromARGB(172, 5, 96, 215),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add your availability',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '5 hrs ago',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      subtitle: Text(
                        'It seems like you have not added your availability yet.',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
