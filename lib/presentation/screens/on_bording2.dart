import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording1.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

import 'log_in.dart';

class ONBORDING2 extends StatelessWidget {
  const ONBORDING2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( leading: InkWell(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (builder)=>ONBORDING1()));},
    child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,)),
        actions: [
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>LOGIN()));
          },
              child:
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text("Skip",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Outfit"),),
              ))
        ],
        backgroundColor: AppColors.background,
        iconTheme: IconThemeData(color: Colors.white),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                new Container(
                  height: 400.0,
                  decoration: new BoxDecoration(
                    color: AppColors.background,

                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Center(
                    child: Column(
                        children: [
                          Image.asset(
                            'assets/images/on_bording2.png',
                            width: 306.59,
                            height: 340.0,
                          ) ] ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Educational resources ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,fontFamily: "Outfit"),
                  )
                ],
              ),
            ),
            SizedBox(
              //height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: [
                      Text("1.",style: TextStyle(fontSize: 15),),
                      Text("  Educational resources are materials Which",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                Text("designed to support teaching and learning.",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: Row(
                    children: [
                      Text("2.",style: TextStyle(fontSize: 15),),
                      Text("They can be digital or physical, including",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                Text("textbooks, videos, lesson plans, and online\n platforms.",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: [Text("3."),
                      Text(" Their open access and ability to be shared",style: TextStyle(fontSize: 15),),
                    ],
                  ),

                ),
                Column(
                  children: [
                  Text("and adapted make them valuable tools for\n educators and learners globally.",style: TextStyle(fontSize: 15),),

                  ],
                ),
                // Text(
                //   "computer program or AI system that assists \nindividuals with ADHD by providing support,\nreminders, and information through text-based or\n spoken conversations, helping them manage their\n daily tasks and challenges related to the condition",
                // style: TextStyle(fontSize: 15),),
                SizedBox(
                  height: 25,
                ),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>ONBORDING3()));
                },
                  child: Container(
                    decoration: BoxDecoration(
                        color:  AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(16)),
                    width: 282,
                    height: 46,
                    alignment: Alignment.center,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Next",style: TextStyle(color: Colors.white,fontSize: 24,fontFamily: "Outfit")),
                          Icon(Icons.keyboard_double_arrow_right_outlined,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
