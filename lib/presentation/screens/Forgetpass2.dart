import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';

import 'VerifyDoctor/verify.dart';

class Forget2 extends StatefulWidget {
  const Forget2({super.key});

  @override
  State<Forget2> createState() => _Forget2State();
}

class _Forget2State extends State<Forget2> {
  bool _obscureText = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Verify()));
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            )),
        iconTheme: IconThemeData(color: Colors.white),

        title: const Text("Change password",style: TextStyle(fontSize: 20,fontFamily: 'Outfit'),),
        centerTitle: true,
      ),

body: Padding(
  padding: const EdgeInsets.all(15.0),
  child: Column(
    children: [
      TextFormField(

        obscureText: _obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25)),
          labelText: 'Old Password',
          //hintText: 'Enter secure password',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),
        // Other TextFormField properties go here
      ),
      SizedBox(height: 25),
      TextFormField(

        obscureText: _obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25)),
          labelText: 'New Password',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),
        // Other TextFormField properties go here
      ),
      SizedBox(height: 25),
      TextFormField(

        obscureText: _obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25)),
          labelText: 'Repeat New Password',
          //hintText: 'Enter secure password',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),

        // Other TextFormField properties go here
      ),
      SizedBox(height: 290),
      InkWell(onTap:(){
      },
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff15596F),
              borderRadius: BorderRadius.circular(24)),
          width: 320,
          height: 44,
          alignment: Alignment.center,
          child: const Text("Sign In ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
        ),
      ),
    ],
  ),
),

    );
  }
}
