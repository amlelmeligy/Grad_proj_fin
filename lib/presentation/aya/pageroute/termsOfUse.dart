import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/screen/profile_screen.dart';

class TermsOfUse extends StatefulWidget {
  const TermsOfUse({super.key});

  @override
  State<TermsOfUse> createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15),
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 1,
                    onPressed: () {
                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80, right: 80),
                    child: Text(
                      'Terms Of Use',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "1. Age Restrictions :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Clearly state the age range for which the application is intended. Ensure that the application complies with relevant regulations regarding the collection of personal information from children, such as the Children's Online Privacy Protection Act (COPPA) in the United States."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "2. Parental Consent :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "If the application is designed for children under a certain age, include a mechanism for obtaining parental consent before collecting any personal information from the child."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "3. Privacy Policy :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Clearly outline the privacy policy, detailing what information the application collects, how it is used, and how it is protected. Be transparent about data storage, security measures, and whether any information is shared with third parties."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "4. Data Security :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Assure users and parents that you have implemented robust security measures to protect the data collected by the application. Specify how data is encrypted, stored, and who has access to it."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "5. User Safety and Well-beingy :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Emphasize the importance of user safety and well-being. Provide guidance on how parents and guardians can supervise and support their child's use of the application."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "6. Disclaimers :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Include disclaimers regarding the intended purpose of the application. Make it clear that the application is not a substitute for professional medical advice, diagnosis, or treatment. Encourage users to consult with qualified healthcare professionals for personalized advice."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "7. User Conduct :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Outline acceptable use of the application and any specific rules or guidelines to ensure a positive and safe user experience. Include a mechanism for reporting inappropriate behavior or content."),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Column(children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "8. Updates and Changes :",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 123, 173)),
                          )),
                      const Text(
                          "Reserve the right to update the terms of use and notify users about any changes. Clearly state that continued use of the application implies acceptance of the updated terms."),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
