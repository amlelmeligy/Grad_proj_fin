import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/Balance.dart';
import 'package:graduation/presentation/screens/log_in2.dart';
import 'package:graduation/presentation/screens/loginDoctor/login_doc.dart';


class UserProfileListScreen extends StatelessWidget {
  // Sample list of user profiles
  final List<UserProfile> userProfiles = [
    UserProfile("John Doe", "assets/images/Group 1232.png"),
    UserProfile("Jane Smith", "assets/images/Frame 2608514.png"),
    UserProfile("Alex Johnson", "assets/images/Frame 200.png"),
    UserProfile("Emily Brown", "assets/images/Frame 2001.png"),
    UserProfile("Michael Jordan", "assets/images/Group 1232.png"),
    UserProfile("Michael Jordan", "assets/images/Group 1232.png"),
    UserProfile("Michael Jordan", "assets/images/Group 1232.png"),
    UserProfile("Michael Jordan", "assets/images/Group 1232.png"),
    // Add more user profiles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            //Navigator.push(context,
            // MaterialPageRoute(builder: (builder) => FORGET()));
          },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
            size: 17,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "User Profile",
          style: TextStyle(
            fontFamily: "Outfit",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10), // Spacer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/Mask group.png",
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Dr.Ahmed",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff525A66),
                          ),
                        ),
                        SizedBox(width: 4),
                        Image.asset(
                          "assets/images/congratulation.png",
                          height: 20,
                          width: 29,
                        ),
                      ],
                    ),
                    Text(
                      "Neurologist",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff525A66),
                      ),
                    ),
                    SizedBox(width: 4),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: userProfiles.length,
              itemBuilder: (context, index) {
                return UserProfileItem(userProfile: userProfiles[index], index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfile {
  final String name;
  final String imagePath;

  UserProfile(this.name, this.imagePath);
}

class UserProfileItem extends StatelessWidget {
  final UserProfile userProfile;
  final int index;

  const UserProfileItem({Key? key, required this.userProfile, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          userProfile.imagePath,
          width: 40,
          height: 40,
        ),
        title: Text(userProfile.name),
        trailing:Icon(Icons.arrow_forward_ios_rounded,color: AppColors.buttonColor,size: 15,),

          onTap: () {
          // Navigate to LoginScreen based on the index
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Balance()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            case 5:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            case 6:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            case 7:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDoc()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
