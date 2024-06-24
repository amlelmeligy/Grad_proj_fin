import 'package:flutter/material.dart';

class chatListtile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;
  // final image;
  const chatListtile(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  "assets/images/$imagename",
                  fit: BoxFit.cover,
                ),
              ),
              height: 70,
              width: 70,
            ),
            Expanded(
                child: ListTile(
              title: Text(
                "$name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("$email"),
              trailing: Text("$date"),
            )),
            Container(
              child: Icon(Icons.task_alt_rounded, color: Colors.green),
            )
          ],
        ));
  }
}
