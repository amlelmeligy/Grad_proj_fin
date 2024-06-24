import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'dart:convert';
import 'dart:io';

class AiScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AiScreen> {
  String _result = '';

  Future<void> _pickFileAndPredict() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
    if (result != null) {
      File file = File(result.files.single.path!);
      // Send the file to the Flask server
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('http://10.0.2.2:5000/predict'),
      );
      request.files.add(await http.MultipartFile.fromPath(
        'file',
        file.path,
      ));
      var response = await request.send();
      if (response.statusCode == 200) {
        String responseString = await response.stream.bytesToString();
        setState(() {
          _result = responseString;
        });
      } else {
        setState(() {
          _result = 'Error: ${response.statusCode}';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Machine Learning',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Image(
                      image: AssetImage('assets/images/ai.png'),
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    // Icon(Icons.manage_search_outlined)
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        Image(
                          image: AssetImage('assets/images/ai2.png'),
                          width: 300,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            'NOW , we help you to diagnose ADHD by determining if this person is infected or not :',
                            style: TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 1, 0, 55)),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: MediaQuery.of(context).size.height / 2.7,
                    alignment: Alignment.center,
                    decoration:
                    BoxDecoration(color: Colors.grey, border: Border.all(width: 1)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image_outlined,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'Drag and drop your patient file here \n And Wait the result ...',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 12,
                          ),
                          SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: ElevatedButton(
                              onPressed: _pickFileAndPredict,child: Text('Pick .mat File and Predict'),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Result: $_result',
                            textAlign: TextAlign.center,
                          ),

                        ])),
              )
            ])));
  }
}