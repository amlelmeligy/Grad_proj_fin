
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/network/Dio/App_Dio.dart';
import 'package:graduation/presentation/aml/home/Home.dart';
import 'package:graduation/presentation/aya/pageroute/Setting/settings_cubit.dart';
import 'package:graduation/presentation/aya/screen/Home/home_cubit.dart';
import 'package:meta/meta.dart';

import '../../../../Cache/local_network.dart';
import '../../../screens/navigation2.dart';

part 'calls_state.dart';

class CallsCubit extends Cubit<CallsState> {
  CallsCubit() : super(CallsInitial());
  static CallsCubit get(context) => BlocProvider.of(context);
  List CallsList=[];
  getCalls(context ){
    emit(GetCallsLOADING());
    AppDioHelper.getdata(url: 'patient/list-patients/',token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}').then((value){
    CallsList = value.data;
      print(CallsList);
      SettingsCubit.get(context).getDoctorInformationfirst(context: context);


    emit(GetCallsSUCCESS());
    }).catchError((error){
      emit(GetCallsERROR());
    });
  }

}
