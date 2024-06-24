import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/screen/calls/calls_cubit.dart';
import 'package:graduation/presentation/aya/widget/homescreen/block/date_widget_block.dart';

class SickWidget extends StatefulWidget {
  const SickWidget({super.key});

  @override
  State<SickWidget> createState() => _SickState();
}

class _SickState extends State<SickWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(14, 228, 228, 59),
      margin: const EdgeInsets.only(top: 20),
      child:  Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.person,
                size: 35,
                color: Color.fromARGB(172, 5, 96, 215),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${CallsCubit.get(context).CallsList[1]['username']}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'ADHD',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, bottom: 1),
                    child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Text(
                    'online Visit',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            DateWidgetBlock(),
          ],
        ),
      ),
    );
  }
}
