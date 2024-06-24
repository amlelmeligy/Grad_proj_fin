import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

class ONBORDING4 extends StatelessWidget {
  const ONBORDING4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: InkWell(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (builder)=>ONBORDING3()));},
          child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,)),
        actions: [
          InkWell(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>LOGIN()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ))
        ],
        backgroundColor: AppColors.background,
        iconTheme: IconThemeData(color: Colors.white),
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
                    //boxShadow: [new BoxShadow(blurRadius: 40.0)],
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
                        'assets/images/on_bording4.png',
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
                    "Healthcare Providers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Text(
                  "Our application Provides the best doctors to deal with",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "ADHD who are knowledgeable and experienced in",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "diagnosing, treating, or providing guidance on ADHD.",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "These medical experts may use the application to",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "offer advice, treatment options, prescriptions for",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "medication if needed, and monitoring for individuals",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "with ADHD.",
                  style: TextStyle(fontSize: 14),
                ),
                // Text(
                //   "computer program or AI system that assists \nindividuals with ADHD by providing support,\nreminders, and information through text-based or\n spoken conversations, helping them manage their\n daily tasks and challenges related to the condition",
                // style: TextStyle(fontSize: 15),),
                SizedBox(
                  height: 25,
                ),
                InkWell(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (builder)=>LOGIN()));},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff15596F),
                        borderRadius: BorderRadius.circular(16)),
                    width: 250,
                    height: 41,
                    alignment: Alignment.center,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Start",
                              style: TextStyle(color: Colors.white, fontSize: 16)),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            color: Colors.white,
                          )
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
