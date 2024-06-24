import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.7,
            image: AssetImage(" assets/images/1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, right: 10),
              child: Image.asset(
                " assets/images/person.jpg",
                alignment: Alignment.topRight,
                width: 80,
                height: 80,
              ),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  "5:31",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              margin: EdgeInsets.only(left: 180, right: 180, top: 500),
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 123, 173),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Salma Khaled",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
