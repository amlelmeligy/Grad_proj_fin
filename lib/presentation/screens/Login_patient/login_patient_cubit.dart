import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/presentation/aml/tasks/Tasks_Cubit/tasks_cubit.dart';
import 'package:meta/meta.dart';

import '../../../Cache/local_network.dart';
import '../../../network/Dio/App_Dio.dart';
import '../Navpatient.dart';
import '../loginDoctor/login_doc.dart';

part 'login_patient_state.dart';

class LoginPatientCubit extends Cubit<LoginPatientState> {
  LoginPatientCubit() : super(LoginPatientInitial());
    static LoginPatientCubit get(context) => BlocProvider.of(context);
  void registerPat({required String email, required String name,
     required String password,required context}) async {
    emit(RegisterLoadingState());
    AppDioHelper.postdata(url: 'patient/register/',data: {
      'email':email,
      'username':name,
      'password':password,
      'password2':password,
    }).then((value){


      CacheNetwork.insertToCache(key: 'name', value: name);
      CacheNetwork.insertToCache(key: 'token', value: value.data['token']);
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
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
        LoginDoc()));
        TasksCubit.get(context).getAllTasks();


      }

      emit(RegisterSuccessState());

    }).catchError((error){
      emit(FailedToRegisterState());
    });

  }


}
