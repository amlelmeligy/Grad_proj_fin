import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/network/Dio/App_Dio.dart';
import 'package:graduation/presentation/aya/pageroute/Setting/settings_cubit.dart';
import 'package:graduation/presentation/aya/screen/Home/home_cubit.dart';
import 'package:graduation/presentation/aya/screen/calls/calls_cubit.dart';
import 'package:graduation/presentation/screens/Navpatient.dart';
import 'package:graduation/presentation/screens/navigation2.dart';
import 'package:meta/meta.dart';

import '../../../aml/tasks/Tasks_Cubit/tasks_cubit.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginDoctorState> {
  LoginCubit() : super(LoginDoctorINIT());
  static LoginCubit get(context) => BlocProvider.of(context);
  loginDoctor({required passsword ,required username ,required context }){
    emit(LoginDoctorLOADING());
AppDioHelper.postdata(url: 'auth/token',data: {
  'username':username,
  'password':passsword,
  'grant_type':'password',
  'client_id':'yjX4klNLOqDQb0CLnC6bAzeyeP9Yzn8K8qH55yxO',
  'client_secret':'NNFb3GhyypgVgRlQLjWJicrMonQa9ZkCoRLQqkFSHJBH6x2NONicyr8uFIPVFfrBLhtdtVfG5hXvhz7mh7ttKGiidlBt3bt9qIQkmBdLbRFiA6ESaYstPn3ERGxUFcbp',
}).then((value){
  CacheNetwork.insertToCache(key: 'name', value: username);
  CacheNetwork.insertToCache(key: 'token', value: value.data['access_token']);
  TasksCubit.get(context).getAllTasks();

  if(CacheNetwork.getCacheData(key: 'patient?')=='0'){
  CallsCubit.get(context).getCalls(context);
} else{
  TasksCubit.get(context).getAllTasks();

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavPatient(),));
}

  SettingsCubit.get(context).getDoctorInformation(context: context);
  Fluttertoast.showToast(
      msg: "Login successfully",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_LEFT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);

  emit(LoginDoctorSUCCESS());

}).catchError((error){
  Fluttertoast.showToast(
      msg: "Your Password or Email is Incorrect",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_LEFT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
  emit(LoginDoctorERROR());
});

  }
  loginPatient({required passsword ,required username ,required context }){
    emit(LoginDoctorLOADING());
AppDioHelper.postdata(url: 'auth/token',data: {
  'username':username,
  'password':passsword,
  'grant_type':'password',
  'client_id':'yjX4klNLOqDQb0CLnC6bAzeyeP9Yzn8K8qH55yxO',
  'client_secret':'NNFb3GhyypgVgRlQLjWJicrMonQa9ZkCoRLQqkFSHJBH6x2NONicyr8uFIPVFfrBLhtdtVfG5hXvhz7mh7ttKGiidlBt3bt9qIQkmBdLbRFiA6ESaYstPn3ERGxUFcbp',
}).then((value){
  CacheNetwork.insertToCache(key: 'name', value: username);

  CacheNetwork.insertToCache(key: 'token', value: value.data['access_token']);

  Fluttertoast.showToast(
      msg: "Login successfully",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_LEFT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);

  emit(LoginDoctorSUCCESS());

}).catchError((error){
  Fluttertoast.showToast(
      msg: "Your Password or Email is Incorrect",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_LEFT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
  emit(LoginDoctorERROR());
});

  }
  bool passvisible = true;

  passWordVision() {
    passvisible = !passvisible;

    emit(PassEyesStateState());
  }
}
