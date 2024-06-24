import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';
import 'package:graduation/presentation/screens/on_bording4.dart';

import 'log_in.dart';

class ONBORDING3 extends StatelessWidget {
  const ONBORDING3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(  leading: InkWell(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (builder)=>LOGIN()));},
          child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,)),
        actions: [
          InkWell(onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (builder)=>ONBORDING4()));
          },
              child:
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("Skip",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ),
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
                            'assets/images/on_bording3.png',
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
                    "Community",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),

            Column(
              children: [
                Text("A chat community is a group of individuals who come",style: TextStyle(fontSize: 14),),
                Text("together to engage in conversations and discussions",style: TextStyle(fontSize: 14),),
                Text("via online chat platforms or messaging apps. These",style: TextStyle(fontSize: 14),),
                Text("communities are often centered around specific",style: TextStyle(fontSize: 14),),
                Text("topics , shared goals, and members interact with one",style: TextStyle(fontSize: 14),),
                Text("another",style: TextStyle(fontSize: 13),),
                // Text(
                //   "computer program or AI system that assists \nindividuals with ADHD by providing support,\nreminders, and information through text-based or\n spoken conversations, helping them manage their\n daily tasks and challenges related to the condition",
                // style: TextStyle(fontSize: 15),),
SizedBox(height: 20,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>ONBORDING4()));
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