import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/pageroute/thankU.dart';
import 'package:graduation/presentation/aya/screen/Home/home_screen.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';


class FeedBackWidget extends StatefulWidget {
  const FeedBackWidget({super.key});

  @override
  State<FeedBackWidget> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBackWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
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
                  'FeedBacks',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: const Column(children: [
            Image(
              image: AssetImage('assets/images/feed.png'),
              width: 140,
              height: 75,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 15),
              child: Text(
                'Your session with Salma is complete! 🎉',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 0, 48, 61)),
              ),
            )
          ]),
        ),
        Expanded(
            child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(54, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 4),
                          child: const Text(
                            'Salma Khaled',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 0, 31, 39)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            'ADHD • Online visit',
                            style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 190, 190, 190)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.symmetric(vertical: 14),
                          child: const Text(
                            '02:00 Pm - 03:00 Pm',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 190, 190, 190)),
                          ),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(202, 234, 255, 234),
                                  borderRadius: BorderRadius.circular(7)),
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                'Completed',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 173, 0)),
                              ),
                            )),
                        MaterialButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.all(11),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromARGB(122, 19, 19, 19))),
                            child: const Text(
                              'View Details',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(54, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'We would love to know your opinion ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 0, 31, 39)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(top: 10),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color.fromARGB(255, 223, 15, 0),
                              ),
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color.fromARGB(255, 223, 15, 0),
                              ),
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color.fromARGB(255, 223, 15, 0),
                              ),
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color.fromARGB(255, 223, 15, 0),
                              ),
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color.fromARGB(255, 223, 15, 0),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          child: TextField(
                            maxLines: 6,
                            cursorHeight: 20,
                            cursorWidth: 1,
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: const TextStyle(
                                fontSize: 16,
                                height: 1,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              isDense: true,
                              hintStyle: const TextStyle(fontSize: 15.5),
                              hintText: 'Write your feekback here',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  thank()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(11),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 1, 75, 95),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(11),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'SKip',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 1, 75, 95)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ))
      ],
    )));
  }
}
