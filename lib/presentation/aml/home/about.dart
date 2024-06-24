import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.cast_for_education), label: 'Education'),
            BottomNavigationBarItem(
                icon: Icon(Icons.control_point_duplicate_sharp),
                label: 'Create Task'),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_bar_chart_rounded), label: 'Chat bot'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: index,
          selectedItemColor: Color.fromARGB(255, 49, 121, 176),
          unselectedItemColor: Colors.grey[800],
          onTap: _changeItem,
        ),
        endDrawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.all(50),
                        child: AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          icon: Icon(
                            Icons.telegram_outlined,
                            size: 100,
                          ),
                          title: Text("Congratulations!"),
                          content: Text(
                              "your passward reset successfully , you will be directed to loginDoctor screen",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(
                                      255, 128, 126, 126))),
                          // actions: [
                          //   ElevatedButton(onPressed: () {}, child: Text('ok')),
                          //   ElevatedButton(onPressed: () {}, child: Text('no'))
                          // ],
                          backgroundColor: Color.fromARGB(255, 175, 195, 223),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      );
                    },
                  );
                },
                color: Colors.red,
                child: Text(
                  "press",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      index = value;
    });
  }
}
