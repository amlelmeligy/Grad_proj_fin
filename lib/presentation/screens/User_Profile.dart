import 'package:flutter/material.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/app/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "User Profile",
          style: TextStyle(
              fontFamily: "Outfit", fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Image.asset("assets/images/Mask group.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text("Dr.${CacheNetwork.getCacheData(key: 'name')}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff525A66))),
                    SizedBox(
                      width: 4,
                    ),
                    Text("Neurologist",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff525A66))),
                    SizedBox(
                      width: 4,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/congratulation.png",
                  height: 20,
                  width: 29,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Group 1232.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 250),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Frame 2608514.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Account Settings",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Frame 200.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Change Password",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Frame 2001.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Feedback after session",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 44),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Group 1232.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Avilability",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Group 1232.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Terms Of Use",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Group 1232.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        color: AppColors.buttonColor),
                  ),
                  SizedBox(width: 220),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.buttonColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
