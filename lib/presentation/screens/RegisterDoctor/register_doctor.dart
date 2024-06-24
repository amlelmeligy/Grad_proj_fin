import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/navigation_bar.dart';
import 'package:graduation/presentation/aya/screen/Home/home_screen.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';
import 'package:graduation/presentation/screens/loginDoctor/login_doc.dart';
import 'package:graduation/presentation/screens/mybot.dart';
import 'package:graduation/presentation/screens/navigation2.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

import '../log_in2.dart';
import 'cubit/auth_cubit.dart';
import 'cubit/auth_state.dart';

class RegisterDoc extends StatelessWidget {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RegisterDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, RegState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 188.0),
                      child: Stack(children: [
                        Image.asset(
                          "assets/images/circle.png",
                          width: 315,
                          height: 250,
                        )
                      ]),
                    ),
                    const Text("Welcome Back ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: "Outfit")),
                    const Text("Let’s create your account ",
                        style: TextStyle(fontSize: 22, fontFamily: "Outfit")),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(children: [
                        _textfieldItem(
                            controller: nameController, hintText: "User name"),
                        const SizedBox(
                          height: 10,
                        ),
                        _textfieldItem(
                            controller: emailController, hintText: "email"),
                        const SizedBox(
                          height: 10,
                        ),
                        _textfieldItem(
                            controller: phoneController, hintText: "phone"),
                        const SizedBox(
                          height: 10,
                        ),
                        _textfieldItem(
                            isSecure: true,
                            controller: passwordController,
                            hintText: "password"),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          minWidth: double.infinity,
                          elevation: 0,
                          height: 40,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: AppColors.buttonColor,
                          onPressed: () {
                            AuthCubit.get(context)
                            .registerDoc(
                                context: context,
                                email: emailController.text,
                                name: nameController.text,
                                phone: phoneController.text,
                                password: passwordController.text);
                          },
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: state is RegisterLoadingState
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Register",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.5,
                                          color: Colors.white),
                                    )),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already  have an account ?",
                                  style: TextStyle(fontFamily: "Outfit")),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                LoginDoc()));
                                  },
                                  child: const Text("Login",
                                      style: TextStyle(
                                          color: AppColors.buttonColor,
                                          fontFamily: "Outfit"))),
                            ],
                          ),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              height: 23,
                              width: 23,
                              child:
                                  Image.asset("assets/images/Google logo.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: Container(
                              height: 23,
                              width: 23,
                              child: Image.asset("assets/images/facebook.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 23,
                              width: 23,
                              child: Image.asset("assets/images/apple.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

Widget _textfieldItem(
    {bool? isSecure,
    required TextEditingController controller,
    required String hintText}) {
  return TextFormField(
    controller: controller,
    validator: (input) {
      if (controller.text.isEmpty) {
        return "$hintText must not be empty";
      } else {
        return null;
      }
    },
    obscureText: isSecure ?? false,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
      labelText: hintText,
    ),
  );
}
