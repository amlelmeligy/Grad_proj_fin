import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerWidget extends StatefulWidget {
  const ImagepickerWidget({super.key});

  @override
  State<ImagepickerWidget> createState() => _ImagepickerWidgetState();
}

class _ImagepickerWidgetState extends State<ImagepickerWidget> {
  @override
  Widget build(BuildContext context) {
    File? imagepicker;

    void imagePicker() async {
      final selectedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      if (imagepicker == null) {
        return;
      }
      setState(() {
        imagepicker = File(selectedImage!.path);
      });
    }

    return Container(
      height: MediaQuery.of(context).size.height / 3,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: Colors.grey, border: Border.all(width: 1)),
      child: imagepicker == null
          ? Column(
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
                  ElevatedButton(
                      onPressed: imagePicker,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 35.0, vertical: 15),
                        child: Text('Upload'),
                      )),
                ])
          : Center(child: Image.file(imagepicker!)),
    );
  }
}
