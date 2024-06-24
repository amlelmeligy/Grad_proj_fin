import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

bool click1 = true;
bool click2 = true;
bool click3 = true;

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 1,
                    onPressed: () {
                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70),
                    child: Text(
                      'Change Password',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                click1 = !click1;
                              });
                            },
                            icon: Icon(
                              click1
                                  ? FontAwesomeIcons.eyeSlash
                                  : FontAwesomeIcons.eye,
                            ),
                            color: click1
                                ? const Color.fromARGB(255, 103, 104, 105)
                                : const Color.fromARGB(255, 61, 125, 177),
                          ),
                          hintText: "***************************",
                          labelText: "Old Password ",
                          border: OutlineInputBorder(
                              gapPadding: 8,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                click2 = !click2;
                              });
                            },
                            icon: Icon(
                              click2
                                  ? FontAwesomeIcons.eyeSlash
                                  : FontAwesomeIcons.eye,
                            ),
                            color: click2
                                ? const Color.fromARGB(255, 103, 104, 105)
                                : const Color.fromARGB(255, 61, 125, 177),
                          ),
                          hintText: "Maaaaaaaaa2908078",
                          labelText: "New Password ",
                          border: OutlineInputBorder(
                              gapPadding: 8,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                click3 = !click3;
                              });
                            },
                            icon: Icon(
                              click3
                                  ? FontAwesomeIcons.eyeSlash
                                  : FontAwesomeIcons.eye,
                            ),
                            color: click3
                                ? const Color.fromARGB(255, 103, 104, 105)
                                : const Color.fromARGB(255, 61, 125, 177),
                          ),
                          hintText: "Maaaaaaaaa2908078",
                          labelText: "Repeat New Password ",
                          border: OutlineInputBorder(
                              gapPadding: 8,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 430,
              padding: const EdgeInsets.only(top: 380, right: 25, left: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 32, 93, 144),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0))),
                        child: Container(
                          width: 300,
                          height: 300,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(bottom: 40),
                                  child: Icon(
                                    FontAwesomeIcons.shield,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 32, 93, 144),
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: const Text(
                                    "Congratulations !",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(top: 4, bottom: 4),
                                  child: const Text(
                                    "your password reset successfully , you will",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "be directed to loginDoctor screen",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}

///////////////////////
