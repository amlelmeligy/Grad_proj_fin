import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/ForgetPassDoc/Forget_pass.dart';
import 'package:graduation/presentation/screens/VerifyDoctor/verify_cubit.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

class NewPassword extends StatelessWidget {
  String? CodeVerify;
  NewPassword({this.CodeVerify});
  bool _obscureText = true;
  bool rememberMe = false;

  TextEditingController NewPass = TextEditingController();
  TextEditingController NewPassConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyCubit,VerifyState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => FORGET()));
              },
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Center(
                child: Text(
                  "Create a New Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: "Outfit"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                  controller: NewPass,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Write new password ',
                    hintText: 'Enter secure password',
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  // Other TextFormField properties go here
                )
              //validatePassword,        //Function to check validation
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                  controller: NewPassConfirm,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Confirm  password',
                    hintText: 'Enter secure password',
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  // Other TextFormField properties go here
                )
              //validatePassword,        //Function to check validation
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: InkWell(
                onTap: () {
                  if(NewPass.text == NewPassConfirm.text){
                    VerifyCubit.get(context)
                        .VerifyEmaill(NewPass.text, CodeVerify, context);
                  }else{
                    Fluttertoast.showToast(
                        msg: "password and confirm password not match",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);


                  }

                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff15596F),
                        borderRadius: BorderRadius.circular(24)),
                    width: 386,
                    height: 46,
                    alignment: Alignment.center,
                    child: const Text("Verify",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Outfit")),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },);
  }
}
