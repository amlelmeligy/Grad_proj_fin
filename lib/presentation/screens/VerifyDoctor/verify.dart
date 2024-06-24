import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/ForgetPassDoc/Forget_pass.dart';
import 'package:graduation/presentation/screens/ForgetPassDoc/forget_pass_doc_cubit.dart';
import 'package:graduation/presentation/screens/VerifyDoctor/create_new_pass.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  bool _onEditing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => FORGET()));
              },
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              )),
          backgroundColor: AppColors.background,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                new Container(
                  height: 350.0,
                  decoration: new BoxDecoration(
                    color: AppColors.background,
                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 250.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Center(
                    child: Column(children: [
                      Image.asset(
                        'assets/images/verify 1.png',
                        width: 253.6,
                        height: 258,
                      )
                    ]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Let’s Verify your account ",
                    style: TextStyle(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),SizedBox(height: 30,),
            Column(children: [
              Text(
                "Please enter the verification number we send to your ",
                style: TextStyle(fontSize: 14, fontFamily: 'Outfit'),
              ),Text(
                " e-mail",
                style: TextStyle(fontSize: 14, fontFamily: 'Outfit'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom:0),
                    child: Center(
                      ),
                    ),
                    VerificationCode(
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Theme.of(context).primaryColor),
                      keyboardType: TextInputType.text,
                      underlineColor: Colors
                          .amber, // If this is null it will use primaryColor: Colors.red from Theme
                      length: 4,
                      cursorColor:
                      Colors.blue, // If this is null it will default to the ambient
                      // clearAll is NOT required, you can delete it
                      // takes any widget, so you can implement your design
                      clearAll: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      margin: const EdgeInsets.all(12),
                      onCompleted: (String value) {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => NewPassword(CodeVerify: value),));

                      },
                      onEditing: (bool value) {
                        setState(() {
                          _onEditing = value;
                        });
                        if (!_onEditing) FocusScope.of(context).unfocus();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 78.0),
                      child: Center(
                        child: Row(children: [
                          Text("Don’t receive a code?",style: TextStyle(fontSize: 12),),
                          InkWell(
                              onTap: () {
                                ForgetPassDocCubit.get(context).sendCodePass(CacheNetwork.getCacheData(key: 'emailresend'), context);
                              },
                              child: Text("   Resend",style: TextStyle(color:AppColors.buttonColor,fontSize: 14),))
                        ],),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ]),
        ));
  }
}
