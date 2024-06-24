import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/ForgetPassDoc/Forget_pass.dart';
import 'package:graduation/presentation/screens/loginDoctor/cubit/login_cubit.dart';

import '../RegisterDoctor/register_doctor.dart';
import 'Register_patient.dart';

class LoginPatient extends StatefulWidget {
  LoginPatient({super.key});

  @override
  State<LoginPatient> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPatient> {
  bool rememberMe = false;
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginDoctorState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: const Color(0xff9D659B),
            appBar: AppBar(

              backgroundColor: const Color(0xff9D659B),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Image.asset("assets/images/login2.png"),
                ),
              ),
              Stack(children: [
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                ),
                Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Center(
                        child: Text(
                      "Welcome Patient",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          fontFamily: "Outfit"),
                    )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'username',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            validator: (input) {
                              if (emailController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "username must not be empty";
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: LoginCubit.get(context).passvisible,
                            decoration: InputDecoration(
                              hintText: 'password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  LoginCubit.get(context).passWordVision();
                                },
                                child: Icon(
                                  LoginCubit.get(context).passvisible
                                      ?Icons.visibility_off: Icons.visibility,color:LoginCubit.get(context).passvisible ? Colors.black :Colors.deepPurple ,
                                ),
                              ),
                            ),
                            validator: (input) {
                              if (passwordController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "password must not be empty";
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (builder) => FORGET()));
                                    },
                                    child: const Text("Forget Passwoed?",
                                        style: TextStyle(
                                            color: Color(0xff15596F)))),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                value: rememberMe,
                                onChanged: (bool? value) {},
                              ),
                              const Text('Remember Me'),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: MaterialButton(
                                height: 44,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                onPressed: () {
                                  if (formKey.currentState!.validate() ==
                                      true) {
                                    BlocProvider.of<LoginCubit>(context)
                                        .loginDoctor(
                                            passsword: passwordController.text,
                                            username: emailController.text,
                                            context: context);
                                  }
                                },
                                minWidth: double.infinity,
                                color: AppColors.buttonColor,
                                textColor: Colors.white,
                                child: state is LoginDoctorLOADING
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : const Text("Login")),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: SizedBox(
                                    height: 23,
                                    width: 23,
                                    child: Image.asset(
                                        "assets/images/Google logo.png"),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  child: SizedBox(
                                    height: 23,
                                    width: 23,
                                    child: Image.asset(
                                        "assets/images/facebook.png"),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 23,
                                    width: 23,
                                    child:
                                        Image.asset("assets/images/apple.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const Text(
                                    "Don’t have an account ?",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    RegisterPatient()));
                                      },
                                      child: const Text(
                                        " Register Now",
                                        style: TextStyle(
                                            color: AppColors.buttonColor,
                                            fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ])
              ])
            ])));
      },
    );
  }
}
