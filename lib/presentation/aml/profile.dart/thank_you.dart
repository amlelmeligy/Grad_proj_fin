import 'package:flutter/material.dart';

class thankYou extends StatelessWidget {
  const thankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(right: 32, left: 32, top: 70, bottom: 20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 225, 219, 219),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Column(children: [
              Container(
                padding: EdgeInsets.only(top: 70, left: 15),
                child: Text(
                  "Thank You!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Text(
                  "Your transaction was successful",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "01/24/2023",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 35, left: 35, bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "10:15 AM",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 35, left: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Salma Khaled",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(right: 25, left: 25, bottom: 30, top: 30),
                child: Divider(
                  endIndent: 0,
                  height: 2,
                  thickness: 2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 35, left: 38, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50.97",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(20),
                width: 310,
                height: 95,
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                          Text(
                            "Credit Card",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Mastercard **78",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 70, left: 30),
                child: Row(
                  children: [
                    Image.asset("assets/images/code.png"),
                    SizedBox(width: 35),
                    Container(
                      width: 120,
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "PAID",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
                left: 20 + 8,
                right: 20 + 8,
                child: Row(
                  children: List.generate(
                      30,
                      (index) => Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              color: Colors.grey,
                              height: 2,
                            ),
                          ))),
                )),
            Positioned(
                left: -20,
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
                right: -20,
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            const Positioned(
                top: -50,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      size: 50,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
