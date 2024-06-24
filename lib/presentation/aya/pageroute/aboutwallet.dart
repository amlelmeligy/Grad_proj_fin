import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/pageroute/call.dart';

class AboutWallet extends StatelessWidget {
  final String name;
  final String subname;

  const AboutWallet({super.key, required this.name, required this.subname});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 243, 242, 240)),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "$name",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "$subname",
                style: const TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 49, 0, 109)),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 25,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 49, 0, 109),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "From 4PM to 4.5 PM",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Call()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 49, 0, 109),
                  ),
                  width: 100,
                  padding: const EdgeInsets.only(left: 30),
                  height: 26,
                  child: Row(
                    children: [
                      Container(
                          child: const Icon(
                        Icons.call,
                        size: 12,
                        color: Colors.white,
                      )),
                      Container(
                        child: const Text(
                          "Call",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
