import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/pageroute/aboutwallet.dart';

class CreateCall extends StatefulWidget {
  const CreateCall({super.key});

  @override
  State<CreateCall> createState() => _CreateCallState();
}

class _CreateCallState extends State<CreateCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Text(
                    " Create new Call",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.call_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const AboutWallet(name: "Yara Yassin", subname: "ADHD Patient"),
            const AboutWallet(name: "Yasmin Ahmed", subname: "ADHD Patient"),
            const AboutWallet(name: "Mai Ahmed", subname: "ADHD Patient"),
            const AboutWallet(name: "Hend Samir", subname: "ADHD Patient"),
            const AboutWallet(name: "Ahmed Ali", subname: "ADHD Patient"),
            const AboutWallet(name: "Aya Ahmed", subname: "ADHD Patient"),
            const AboutWallet(name: "Alaa Hassan", subname: "ADHD Patient"),
            const AboutWallet(name: "Mariam Rashad", subname: "ADHD Patient"),
            const AboutWallet(name: "Aml Gamal", subname: "ADHD Patient"),
            const AboutWallet(name: "Aya Elraghy", subname: "ADHD Patient"),
          ],
        ),
      ),
    );
  }
}
