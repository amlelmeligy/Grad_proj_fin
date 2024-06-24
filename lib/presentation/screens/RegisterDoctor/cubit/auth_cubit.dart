import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/presentation/screens/RegisterDoctor/cubit/auth_state.dart';

import '../../../../Cache/local_network.dart';
import '../../../../network/Dio/App_Dio.dart';
import '../../loginDoctor/login_doc.dart';


class AuthCubit extends Cubit<RegState> {
  AuthCubit() : super(AuthInitialState());
  static AuthCubit get(context) => BlocProvider.of(context);

  // Todo: API URL => https://student.valuxapps.com/api/
  // Todo: Register endpoint => register
  void registerDoc({required String email, required String name,
    required String phone, required String password,required context}) async {
    emit(RegisterLoadingState());
    AppDioHelper.postdata(url: 'doctor/register/',data: {
      'email':email,
      'username':name,
      'contact':phone,
      'password':password,
      'password2':password,
      'specialize':'specialize',
      'birth_date':'1970-2-10',
      'address':'address',
      'experiance':0,
    }).then((value){
      

     CacheNetwork.insertToCache(key: 'name', value: name);

     if (value.data['token']==null){
       Fluttertoast.showToast(
           msg: "Correct your Email OR Username",
           toastLength: Toast.LENGTH_SHORT,
           gravity: ToastGravity.BOTTOM_LEFT,
           timeInSecForIosWeb: 1,
           backgroundColor: Colors.red,
           textColor: Colors.white,
           fontSize: 16.0);

     }else{
       Fluttertoast.showToast(
           msg: "Please Login With your New Account",
           toastLength: Toast.LENGTH_SHORT,
           gravity: ToastGravity.BOTTOM_LEFT,
           timeInSecForIosWeb: 1,
           backgroundColor: Colors.green,
           textColor: Colors.white,
           fontSize: 16.0);
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginDoc(),));
       CacheNetwork.insertToCache(key: 'token', value: value.data['token']);


     }

      emit(RegisterSuccessState());

    }).catchError((error){
      emit(FailedToRegisterState());
    });

  }

}
