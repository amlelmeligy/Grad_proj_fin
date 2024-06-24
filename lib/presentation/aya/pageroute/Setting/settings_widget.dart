import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/presentation/aya/pageroute/Setting/settings_cubit.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit,SettingsState>(builder: (context, state) {
      return  SafeArea(
          child: Scaffold(
            body: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
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
                      padding: EdgeInsets.only(left: 100, right: 100),
                      child: Text(
                        'Settings',
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 13),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [CircleAvatar(
                    radius: 30,
                    backgroundImage: SettingsCubit.get(context).DocDetails['photo']!=null?NetworkImage(SettingsCubit.get(context).DocDetails['photo'].toString())
                        :NetworkImage('https://th.bing.com/th/id/R.9c213f70d66f833eb40f7cc3e907d724?rik=X9mHpfM3hPTvmA&pid=ImgRaw&r=0'),)

                    ,Container(
                      width: 240,
                      child: MaterialButton(
                        onPressed: () {
                          SettingsCubit.get(context).getImage(context);

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.2,
                                color: const Color.fromARGB(255, 145, 145, 145)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.camera_alt_outlined,
                                  size: 24,
                                  color: Color.fromARGB(255, 145, 145, 145)),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Change Profile Picture',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 145, 145, 145)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.sizeOf(context).width * 1 / 2.28,
                                    child: TextField(
                                      controller: usernameControl,
                                      maxLines: 1,
                                      cursorHeight: 20,
                                      cursorWidth: 1,
                                      showCursor: true,
                                      cursorColor: const Color.fromARGB(255, 4, 90, 240),
                                      decoration: InputDecoration(
                                        labelText:'name',
                                        labelStyle: const TextStyle(fontSize: 14),
                                        isDense: true,
                                        hintStyle: const TextStyle(fontSize: 14),
                                        hintText: 'name',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.sizeOf(context).width * 1 / 2.28,
                                    child: TextField(
                                      maxLines: 1,
                                      controller: specialistControl,
                                      cursorHeight: 20,
                                      cursorWidth: 1,
                                      showCursor: true,
                                      cursorColor: const Color.fromARGB(255, 4, 90, 240),
                                      decoration: InputDecoration(
                                        labelText:
                                        'Specialization',
                                        labelStyle: const TextStyle(fontSize: 14),
                                        isDense: true,
                                        hintStyle: const TextStyle(fontSize: 14),
                                        hintText: 'Specialization',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 1,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: emailControl,
                                    cursorHeight: 20,
                                    cursorWidth: 1,
                                    showCursor: true,
                                    cursorColor: const Color.fromARGB(255, 4, 90, 240),
                                    decoration: InputDecoration(
                                      labelText:
                                      'example@gmail.com',
                                      labelStyle: const TextStyle(fontSize: 14),
                                      isDense: true,
                                      hintStyle: const TextStyle(fontSize: 14),
                                      hintText: 'example@gmail.com',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 1,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: contactControl,
                                    cursorHeight: 20,
                                    cursorWidth: 1,
                                    showCursor: true,
                                    cursorColor: const Color.fromARGB(255, 4, 90, 240),
                                    decoration: InputDecoration(
                                      labelText:
                                      '(+20) 01************',
                                      labelStyle: const TextStyle(fontSize: 14),
                                      isDense: true,
                                      hintStyle: const TextStyle(fontSize: 14),
                                      hintText: '(+20) 01************',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 1,
                                  child: TextField(
                                    controller: addressControl,
                                    maxLines: 1,
                                    cursorHeight: 20,
                                    cursorWidth: 1,
                                    showCursor: true,
                                    cursorColor: const Color.fromARGB(255, 4, 90, 240),
                                    decoration: InputDecoration(
                                      labelText:
                                      'Addrees',
                                      labelStyle: const TextStyle(fontSize: 14),
                                      isDense: true,
                                      hintStyle: const TextStyle(fontSize: 14),
                                      hintText: 'Addrees',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 1,
                                  child: TextField(
                                    controller: expControl,
                                    maxLines: 1,
                                    cursorHeight: 20,
                                    cursorWidth: 1,
                                    showCursor: true,
                                    cursorColor: const Color.fromARGB(255, 4, 90, 240),
                                    decoration: InputDecoration(
                                      labelText:
                                      'number of years',
                                      labelStyle: const TextStyle(fontSize: 14),
                                      isDense: true,
                                      hintStyle: const TextStyle(fontSize: 14),
                                      hintText: 'number of years',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 375,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 0, 75, 95),
                                    borderRadius: BorderRadius.circular(10)),
                                margin: const EdgeInsets.only(top: 40),
                                child: TextButton(
                                  onPressed: () {
                                    SettingsCubit.get(context).UpdateDocInformation(
                                        context: context,
                                        email: emailControl.text,contact: contactControl.text,
                                        name: usernameControl.text,
                                        address: addressControl.text,
                                        experience: expControl.text,
                                        specialist: specialistControl.text);
                                  },
                                  child: state is SettingsUpdateInfoLOADING? const CircularProgressIndicator(color: Colors.white,): const Text(
                                    'Save Changes',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ))
            ]),
          ));
    },);
  }
}

TextEditingController emailControl = TextEditingController();
TextEditingController addressControl = TextEditingController();
TextEditingController contactControl = TextEditingController();
TextEditingController usernameControl = TextEditingController();
TextEditingController specialistControl = TextEditingController();
TextEditingController expControl = TextEditingController();
