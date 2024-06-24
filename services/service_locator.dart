
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:graduation/presentation/screens/RegisterDoctor/cubit/auth_cubit.dart';



final sl = GetIt.instance;
void initServiceLoactor(){
  //cubits
sl.registerLazySingleton(()=> AuthCubit());
}