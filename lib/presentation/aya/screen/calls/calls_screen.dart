import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/presentation/aya/screen/calls/Calls_Widget.dart';
import 'package:graduation/presentation/aya/screen/calls/calls_cubit.dart';

import '../../../screens/VideoCall/callscreen.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CallsCubit,CallsState>(builder: (context, state) {
        return Scaffold(
          floatingActionButton: SizedBox(
              height: 35.0,
              width: 35.0,
              child: FloatingActionButton(
                onPressed: () {
                  // Do something when the button is pressed
                },
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.add_outlined,
                  color: Color.fromARGB(255, 0, 70, 100),
                ),
              )),
          body: Column(
            children: [
               Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Calls',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    IconButton(onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration:
                            const Duration(milliseconds: 900),
                            pageBuilder:
                                (context, animation, secondAnimation) =>
                                callScreen(),
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

                    },icon: Icon(Icons.call_rounded),)
                  ],
                ),
              ),

              Expanded(
                child: callsList(context: context)
              )
            ],
          ),
        );
      },)
    );
  }
}
