import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(children: [
            Container(
              child: Image.asset("assets/images/Frame 2608520.png"),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:  88.0),
                child: Column(
                  children: [
                    Text("Your Balance",style: TextStyle(fontSize: 16,fontFamily: "Outfit"),),
                    Text("1340.56",style: TextStyle(fontSize: 40,fontFamily: "Outfit",fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff15596F),
                          borderRadius: BorderRadius.circular(16)),
                      width: 255,
                      height: 40,
                      alignment: Alignment.center,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.input_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text("Withdraw",
                                style: TextStyle(color: Colors.white, fontSize: 20)),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
          SizedBox(height: 20),
          Text("This week’s income",style: TextStyle(fontSize: 14,fontFamily: "Outfit"),),
          SizedBox(height: 5),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("746.80",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff00A168),
                      borderRadius: BorderRadius.circular(5)),
                  width: 52,
                  height: 23,
                  alignment: Alignment.center,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Text("34%",
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                        SizedBox(width: 5),
                        Image.asset("assets/images/arrow.png")

                      ],
                    ),
                  ),
                ),
            ],),
          )
        ],
      ),
    );
  }
}
