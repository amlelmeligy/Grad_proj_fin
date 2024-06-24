import 'dart:io';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/network/Dio/App_Dio.dart';
import 'package:graduation/presentation/aya/pageroute/Setting/settings_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

import '../../../screens/navigation2.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
  static SettingsCubit get(context) => BlocProvider.of(context);
  var DocDetails;
  getDoctorInformationfirst({required context}) {
    emit(SettingsGetInfoLOADING());
    AppDioHelper.getdata(
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}',
            url: 'doctor/retrieve/${CacheNetwork.getCacheData(key:'name')}')
        .then((value) {
      print(value.data);
      print(CacheNetwork.getCacheData(key:'name'));
      DocDetails = value.data;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navigation2(),));

      emit(SettingsGetInfoSUCCESS());
    }).catchError((error) {
      print(CacheNetwork.getCacheData(key:'name'));

      print(error);
    });
  }
  getDoctorInformation({required context}) {
    emit(SettingsGetInfoLOADING());
    AppDioHelper.getdata(
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}',
            url: 'doctor/retrieve/${CacheNetwork.getCacheData(key:'name')}')
        .then((value) {
      print(value.data);
      print(CacheNetwork.getCacheData(key:'name'));
      DocDetails = value.data;

      emit(SettingsGetInfoSUCCESS());
    }).catchError((error) {
      print(CacheNetwork.getCacheData(key:'name'));

      print(error);
    });
  }

  UpdateDocInformation({
    required String name,
    String? specialist,
    String? address,
    required context,
    String? email,
    String? contact,
    String? experience,
  }) {
    emit(SettingsUpdateInfoLOADING());
    AppDioHelper.updateData(
        token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}',
        url: 'doctor/update/${CacheNetwork.getCacheData(key: 'name')}/',
        data: {
          'username': name == ''
              ? SettingsCubit.get(context).DocDetails['username']
              : name,
          'specialize': specialist == ''
              ? SettingsCubit.get(context).DocDetails['specialize']
              : specialist,
          'address': address == ''
              ? SettingsCubit.get(context).DocDetails['address']
              : address,
          'email': email == ''
              ? SettingsCubit.get(context).DocDetails['email']
              : email,
          'contact': contact == ''
              ? SettingsCubit.get(context).DocDetails['contact']
              : contact,
          'experiance': experience == ''
              ? SettingsCubit.get(context).DocDetails['experiance']
              : experience,
          'photo': selectedOrderImage == ''
              ? SettingsCubit.get(context).DocDetails['photo']
              : selectedOrderImage,
        }).then((value) {
      Fluttertoast.showToast(
          msg: "update is done👍",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_LEFT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      CacheNetwork.insertToCache(key: 'name', value: name);
      getDoctorInformation(context: context);
    }).catchError((error) {});
  }

  File? selectedOrderImage;
  final picker = ImagePicker();


  List<File> profileImage = [];
  Future<void> getImage(context) async {
    final picker = ImagePicker();
    final pickedImages = await picker.pickMultiImage();

    if (pickedImages != null) {
      profileImage = pickedImages
          .map((pickedImage) => File(pickedImage.path))
          .take(1)
          .toList();

      emit(ConfirmOrderImageFromGalleryState());
    } else {
      profileImage = [];
      updateData();
getDoctorInformation(context: context);
      Fluttertoast.showToast(
          msg: "you changed your profile picture👍",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_LEFT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      emit(ConfirmOrderImageFromGalleryState());

    }
    updateData();
    Fluttertoast.showToast(
        msg: "you changed your profile picture👍",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_LEFT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
    getDoctorInformation(context: context);

    emit(ConfirmOrderImageFromGalleryState());

  }
  void updateData() async {
    final request = http.MultipartRequest(
        'PATCH', Uri.parse("http://alaahassan0.pythonanywhere.com/doctor/update/${CacheNetwork.getCacheData(key: 'name')}/"));

    request.headers['Authorization'] =
    'Bearer ${CacheNetwork.getCacheData(key: "token")}';

    for (var image in profileImage) {
      var stream = http.ByteStream(image.openRead());
      var length = await image.length();
      var multipartFile = http.MultipartFile(
        'photo',
        stream,
        length,
        filename: image.path.split('/').last,
      );
      request.files.add(multipartFile);
    }
    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

  }

}
