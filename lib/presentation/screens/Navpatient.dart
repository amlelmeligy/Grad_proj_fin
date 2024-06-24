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

import '../aml/chats/chat.dart';
import '../aml/edit_task/edit_task.dart';
import '../aml/profile.dart/profile.dart';



class NavPatient extends StatefulWidget {
  const NavPatient({super.key});

  @override
  State<NavPatient> createState() => _NavigationState();
}

class _NavigationState extends State<NavPatient> {
  int index = 0;
  final screens = [Home(), resource(), addTask(), ChatBot(), profile()];
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
              Icons.menu_book_rounded,
              size: 27,
            ),
            label: "Education ",
          ),
          NavigationDestination(
            icon: Icon(
              color: Colors.grey[900],
              Icons.add_circle_outline_rounded,
              size: 27,
            ),
            label: "Create Task",

          ),
          NavigationDestination(
            icon: FaIcon(
              Icons.chat_bubble_outline,
              color: Colors.grey[900],
              size: 27,
            ),
            label: "Chat",
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

