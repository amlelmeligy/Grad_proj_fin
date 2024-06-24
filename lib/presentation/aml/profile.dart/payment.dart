import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation/presentation/aml/profile.dart/thank_you.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  List<String> images = [
    "assets/images/5.png",
    "assets/images/5.png",
    "assets/images/5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Payment Card",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, right: 10, left: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0)!),
                      ),
                      width: 65,
                      height: 65,
                      child: Image.asset("assets/images/4.png"),
                    ),
                  ),
                  Container(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0)!),
                      ),
                      width: 65,
                      height: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.paypal,
                            color: Colors.blue[800],
                          ),
                          SizedBox(width: 8),
                          Text(
                            "pay",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 10, 53, 90),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "pal",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0)!),
                      ),
                      width: 65,
                      height: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.apple,
                            size: 25,
                          ),
                          Text(
                            "Pay",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////////
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 210,
                  width: 1000,
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    // padEnds: false,
                    itemCount: images.length,
                    controller:
                        PageController(initialPage: 2, viewportFraction: 0.9),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(3),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            ///////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.all(20),
              child:
                  paymentDet(tit: "Card Number", sub: "1234  5678  1234  5678"),
            ),

            Container(
              padding:
                  EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      child: paymentDet(
                    tit: "Name",
                    sub: "Salma Khaled",
                  )),
                  Container(width: 40),
                  Expanded(
                      child: paymentDet(
                    tit: "Card ID",
                    sub: "Mastercard",
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(
                children: [
                  Expanded(
                      child: paymentDet(
                    tit: "Expiration Date",
                    sub: "07/29",
                  )),
                  Container(width: 40),
                  Expanded(
                      child: paymentDet(
                    tit: "CVV",
                    sub: "215",
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(
                children: [
                  Expanded(
                      child: paymentDet(
                    tit: "Duration",
                    sub: "60 Minutes",
                  )),
                  Container(width: 40),
                  Expanded(
                      child: paymentDet(
                    tit: "Amount",
                    sub: "150 LE",
                  )),
                ],
              ),
            ),
            Container(
              height: 75,
              padding: EdgeInsets.only(top: 30, right: 40, left: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 32, 93, 144),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => thankYou()),
                  );
                },
                child: Text(
                  "Pay",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////

class paymentDet extends StatelessWidget {
  const paymentDet(
      {super.key, required this.tit, required this.sub, this.controller});
  final String tit;
  final String sub;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tit,
            style: TextStyle(color: Colors.grey[800], fontSize: 20),
          ),
          Container(
            height: 35,
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0),
            ),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  cursorColor: Color.fromARGB(255, 0, 0, 0),
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: sub,
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
