import 'dart:math';

import 'package:flutter/material.dart';

import 'calls_cubit.dart';

Widget callsList({
  required context,
}) {
  return ListView.separated(
    separatorBuilder: (context, index) {
      return const Divider();
    },
    shrinkWrap: true,
    padding: const EdgeInsets.all(10),
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${CallsCubit.get(context).CallsList[index]['username']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      '${CallsCubit.get(context).CallsList[index]['email']}',
                      style: const TextStyle(color: Colors.grey,
                          fontWeight: FontWeight.bold, fontSize: 8),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 34, 0, 90),
                      width: 1.8,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child:  Padding(
                      padding: EdgeInsets.only(left: 2, right: 2),
                      child: Text(
                        '  From ${Random().nextInt(12)}PM to ${Random().nextInt(12)}PM  ',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 34, 0, 90)),
                      )),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ADHD Patient',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 24, 60)),
                ),
                MaterialButton(
                  height: 32,
                  color: const Color.fromARGB(255, 0, 20, 48),
                  minWidth: 110,
                  textColor: Colors.white,
                  onPressed: () {
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child:  Text(
                    '${Random().nextInt(450)} EG',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    },
    itemCount: CallsCubit.get(context).CallsList.length,
  );
}
