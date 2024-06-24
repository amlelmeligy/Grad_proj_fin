import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

import 'log_in.dart';

class ONBORDING1 extends StatelessWidget {
  const ONBORDING1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
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
        child: SingleChildScrollView(
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
                      child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Group 41.png',
                              width: 306.59,
                              height: 340.0,
                            ) ] ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,left: 16),
                child: Row(
                  children: [
                    Text(
                      "Chatbot",
                      style: TextStyle(fontFamily:"Outfit",fontWeight: FontWeight.bold, fontSize: 22),
                    )
                  ],
                ),
              ),
              SizedBox(
               // height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0,left: 0),
                child: Column(
                  children: [
                    Text("1. A virtual conversation partner mimicking\n    human interaction through text or voice.",style: TextStyle(fontSize: 16,fontFamily: "Outfit"),),
                    Text("2. Often used in business settings to helping\n    in automate tasks & provide customer\n    service.",style: TextStyle(fontSize: 16,fontFamily: "Outfit"),),
                    Text("3. Powered by AI & fueled by large amounts\n    of data to understand and respond to\n    user queries.",style: TextStyle(fontSize: 16,fontFamily: "Outfit"),),
                    // Text(
                    //   "computer program or AI system that assists \nindividuals with ADHD by providing support,\nreminders, and information through text-based or\n spoken conversations, helping them manage their\n daily tasks and challenges related to the condition",
                    // style: TextStyle(fontSize: 15),),
                    SizedBox(
                      height: 12,
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>ONBORDING2()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}