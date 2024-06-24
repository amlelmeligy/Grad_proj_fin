import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class meeting extends StatefulWidget {
  const meeting({super.key});

  @override
  State<meeting> createState() => _meetingState();
}

class _meetingState extends State<meeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white70,),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage("assets/images/1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 580, right: 50, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Dr.Ahmed",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 5,
                      ),
                      Text(
                        "10:00",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 100,
                    height: 100,
                    child:
                        Expanded(child: Image.asset("assets/images/Group 1196.png")))
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.mic,
                    size: 32,
                  ),
                ),
                Container(width: 30),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(33, 253, 253, 253),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.videocam,
                    size: 32,
                  ),
                ),
                Container(width: 30),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.call,
                    size: 32,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
