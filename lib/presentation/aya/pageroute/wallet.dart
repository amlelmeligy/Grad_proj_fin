import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/pageroute/aboutwallet.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(backgroundColor: Color.fromRGBO(145, 209, 228, 1),),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Image.asset(
                "assets/images/2.png",
                fit: BoxFit.fill,
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text(
                  "This week’s income",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            ////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "746.80\$",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 49, 0, 109),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "34%",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
            ///////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 25),
              child: Center(
                child: Text(
                  "26 oct ,2023",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            //////////////////////////////////////////////////////////////
            const AboutWallet(name: "Yara Yassin", subname: "ADHD Patient"),
            const AboutWallet(name: "Yasmin Ahmed", subname: "ADHD Patient"),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Center(
                child: Text(
                  "26 oct ,2023",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            const AboutWallet(name: "Mai Ahmed", subname: "ADHD Patient"),
            const AboutWallet(name: "Hend Samir", subname: "ADHD Patient"),

            //////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
