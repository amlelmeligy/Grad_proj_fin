import 'package:flutter/material.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/presentation/aya/pageroute/Setting/settings_cubit.dart';
import 'package:graduation/presentation/aya/screen/Home/home_cubit.dart';
import 'package:graduation/presentation/screens/VideoCall/callscreen.dart';

class DateWidgetBlock extends StatefulWidget {
  const DateWidgetBlock({super.key});

  @override
  State<DateWidgetBlock> createState() => _DateWidgetBlockState();
}

class _DateWidgetBlockState extends State<DateWidgetBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 205, 232, 255),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.calendar_month), Text('Monday,May 12')],
                ),
                Row(
                  children: [
                    Icon(Icons.timer_outlined),
                    Text('2:00 Pm - 3:00 Pm')
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 6, 66, 93),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    onTap: () {
SettingsCubit.get(context).UpdateDocInformation(context: context,name: CacheNetwork.getCacheData(key: 'name'));
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 5, bottom: 5),
                        child: Text(
                          'Reschedule',
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 6, 66, 93)),
                        )),
                  ),
                ),
                Container(
                  width: 130,
                  child: MaterialButton(
                    height: 48,
                    color: const Color.fromARGB(255, 6, 66, 93),
                    minWidth: 170,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration:
                            const Duration(milliseconds: 900),
                            pageBuilder:
                                (context, animation, secondAnimation) =>
                                    const callScreen(),
                            transitionsBuilder:
                                (context, animation, secondAnimation, child) {
                              var begin = const Offset(-1.0, 0.0);
                              var end = Offset.zero;
                              var curve = Curves.ease;
                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                          ));

                      // Do something when the button is pressed
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Text(
                      'Join Session',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
