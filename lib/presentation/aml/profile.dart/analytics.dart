import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_chart/pie_chart.dart';

class analytics extends StatefulWidget {
  @override
  State<analytics> createState() => _analyticsState();
}

class _analyticsState extends State<analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("User Analytics"),
      ),
      body: Container(
        padding: EdgeInsets.all(11),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 17),
              child: Text(
                "Overview",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 48, 92, 127), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 110,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 48, 92, 127), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "8",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 35),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 105,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 48, 92, 127), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Text(
                          "Pending",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Text(
                "Productivity",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5, bottom: 30),
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      width: 105,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 48, 92, 127),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Weekly",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(width: 35),
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      width: 100,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 123, 122, 122),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(width: 35),
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      width: 100,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 123, 122, 122),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Yearly",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Tasks",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 62, 123, 173),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PieChart(
                    dataMap: {
                      "Completed": 40,
                      "On Hold": 5,
                      "On Progress": 25,
                      "Pending": 30,
                    },
                    animationDuration: Duration(milliseconds: 1500),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 2.9,
                    colorList: [
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                      Colors.purple,
                    ],
                    initialAngleInDegree: 0,
                    chartType: ChartType.disc,
                    ringStrokeWidth: 80,
                    centerText: "",
                    legendOptions: LegendOptions(
                      showLegendsInRow: false,
                      legendPosition: LegendPosition.right,
                      showLegends: true,
                      legendShape: BoxShape.rectangle,
                      legendTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValueBackground: false,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: true,
                      decimalPlaces: 1,
                    ),
                    // gradientList: ---To add gradient colors---
                    // emptyColorGradient: ---Empty Color gradient---
                  )
                ],
              ),
            ),
            ///////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 62, 123, 173)),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset("assets/images/chart2.png"),
            )
          ],
        ),
      ),
    );
  }
}
