import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/presentation/screens/log_in2.dart';
import 'package:meta/meta.dart';

import '../../../network/Dio/App_Dio.dart';
import '../loginDoctor/login_doc.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit() : super(VerifyInitial());
  static VerifyCubit get(context) => BlocProvider.of(context);

  VerifyEmaill(newPass, verifyCode, context) {
    emit(VerifyLOADING());
    AppDioHelper.postdata(
            url: 'api/password_reset/confirm/',
            data: {
              'password': newPass,
              'token': verifyCode,
            },
)
        .then((value) {
      Fluttertoast.showToast(
          msg: "Please Login With New Password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_LEFT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      print(value.data);
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginDoc(),));
      emit(VerifySUCCESS());
    }).catchError((error) {
      Fluttertoast.showToast(
          msg: "your verify code or password is incorrect",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM_LEFT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      emit(VerifyERROR());
    });
  }
}
