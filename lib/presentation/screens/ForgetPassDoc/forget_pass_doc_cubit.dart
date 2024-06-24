import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/network/Dio/App_Dio.dart';
import 'package:meta/meta.dart';

import '../VerifyDoctor/verify.dart';

part 'forget_pass_doc_state.dart';

class ForgetPassDocCubit extends Cubit<ForgetPassDocState> {
  ForgetPassDocCubit() : super(ForgetPassDocInitial());
  static ForgetPassDocCubit get(context) => BlocProvider.of(context);

sendCodePass(email,context){
  emit(ForgetPassDocLOADING());
  AppDioHelper.postdata(url: 'api/password_reset/',data: {
    'email':email
  }).then((value){
    Fluttertoast.showToast(
        msg: "Check your Inbox",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_LEFT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
    CacheNetwork.insertToCache(key: 'emailresend', value: email.toString());
    Navigator.push(context,
        MaterialPageRoute(builder: (builder) => const Verify()));

    emit(ForgetPassDocSUCCESS());
  }).catchError((error){
    emit(ForgetPassERROR());
  });
}
}
