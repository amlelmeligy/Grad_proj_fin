import 'package:flutter/material.dart';
import 'package:graduation/presentation/screens/VideoCall/VideoCall.dart';

import '../../../app/app_colors.dart';

class callScreen extends StatelessWidget {
  const callScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Textcontorl = TextEditingController();
    Image myimage = Image.asset('assets/images/call.png');
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/on_bording4.png'),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: Textcontorl,
                    validator: (input) {
                      if (Textcontorl.text.isEmpty) {
                        return "id must not be empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        hintText: 'Please Enter Session ID',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      elevation: 0,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      color: AppColors.buttonColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VideoPage(callid: Textcontorl.text),
                            ));

                      },
                      child: const Text(
                        "Enter To Session",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.5,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
