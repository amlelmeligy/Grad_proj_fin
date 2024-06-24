import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation/presentation/aml/home/Home.dart';
import 'package:graduation/presentation/aml/resources/resource.dart';
import 'package:graduation/presentation/aml/tasks/add_task.dart';
import 'package:graduation/presentation/aya/screen/ai_screen.dart';
import 'package:graduation/presentation/aya/screen/calls/calls_screen.dart';
import 'package:graduation/presentation/aya/screen/Home/home_screen.dart';
import 'package:graduation/presentation/aya/screen/notifications_screen.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';
import 'package:graduation/presentation/screens/mybot.dart';



class Navigation2 extends StatefulWidget {
  const Navigation2({super.key});

  @override
  State<Navigation2> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation2> {
  int index = 0;
  final screens = [HomeScreen(), CallScreen(), NotificationScreen(), AiScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 70,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey[900],
              size: 27,
            ),
            label: "Home ",
          ),
          NavigationDestination(
            icon: Icon(
              color: Colors.grey[900],
              Icons.call_outlined,
              size: 27,
            ),
            label: "Calls ",
          ),
          NavigationDestination(
            icon: Icon(
              color: Colors.grey[900],
              Icons.notifications_outlined,
              size: 27,
            ),
            label: "Notifi...",

          ),
          NavigationDestination(
            icon: FaIcon(
              Icons.check_box_outline_blank_rounded,
              color: Colors.grey[900],
              size: 27,
            ),
            label: "Ai",
          ),
          NavigationDestination(
            icon: FaIcon(
              color: Colors.grey[900],
              Icons.person_outline_rounded,
              size: 27,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

