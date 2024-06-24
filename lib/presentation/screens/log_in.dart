import 'package:flutter/material.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/Login_patient/Register_patient.dart';
import 'package:graduation/presentation/screens/RegisterDoctor/register_doctor.dart';
import 'package:graduation/presentation/screens/register_patient.dart';
import 'package:graduation/presentation/screens/log_in2.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';
import 'package:graduation/presentation/screens/on_bording4.dart';

class LOGIN extends StatelessWidget {
  const LOGIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: AppColors.background,automaticallyImplyLeading: false,
         leading: InkWell(
             onTap: () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (builder) => ONBORDING4()));
             },
             child: Icon(
               Icons.arrow_back_ios_new_sharp,
               color: Colors.black,
             )),
           //actions: [
      //
      //
      //   backgroundColor: AppColors.background,
      //   iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                new Container(
                  height: 410.0,
                  decoration: new BoxDecoration(
                    color: AppColors.background,
                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 90.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Center(
                    child: Column(children: [
                      Image.asset(
                        'assets/images/LOGIN1.png',
                        width: 306.59,
                        height: 340.0,
                      )
                    ]),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Sign Up as ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,fontFamily: "Outfit"),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                InkWell(onTap: (){
                  CacheNetwork.insertToCache(key: 'patient?', value: '1');
                  print(CacheNetwork.getCacheData(key: 'patient?'));
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>RegisterPatient()));},
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(24)),
                    width: 290,
                    height: 44,
                    alignment: Alignment.center,
                    child: const Text("Patient",style: TextStyle(color: Colors.white,fontFamily: "Outfit")),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(onTap: (){
                  CacheNetwork.insertToCache(key: 'patient?', value: '0');
                  print(CacheNetwork.getCacheData(key: 'patient?'));

                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>RegisterDoc()));},
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(
                      color: Color(0xff15596F)
                    ),
                        color: Color(0xffF6F9FA),
                        borderRadius: BorderRadius.circular(24)),
                    width: 290,
                    height: 44,
                    alignment: Alignment.center,
                    child: const Text("Doctor",style: TextStyle(color:  AppColors.buttonColor,fontFamily: "Outfit")),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

