import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/network/Dio/App_Dio.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(CreateTaskInitial());
  static CreateTaskCubit get(context) => BlocProvider.of(context);

  CreateTask({
    required title,
    required purpose,
    required start_time,
    required end_time,
    required favorite,
    required trash,
    required hidden,
}){
    AppDioHelper.postdata(url:'patient/create/task/',token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}',data: {
      'patient':CacheNetwork.getCacheData(key: 'name').toString(),
      'title':title,
      'purpose':purpose,
      'start_time':start_time,
      'end_time':end_time,
      'favorite':favorite,
      'trash':trash,
      'description':'-----',
      'priority':'HG',
      'reminder':true,
      'hidden':hidden,


    }).then((value){
emit(CreateTaskSUCCESS());
print(value.data);
    }).catchError((error){
print(error.toString());
    });
  }

}
