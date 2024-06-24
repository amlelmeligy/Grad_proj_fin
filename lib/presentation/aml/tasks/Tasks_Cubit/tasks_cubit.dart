import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/network/Dio/App_Dio.dart';
import 'package:meta/meta.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksInitial());
  static TasksCubit get(context) => BlocProvider.of(context);
  List AllTasks = [];
  getAllTasks() {
    emit(TasksGetLOADING());
    AppDioHelper.getdata(
            url: 'patient/list/task/',
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}')
        .then((value) {
      AllTasks = value.data;
      print(AllTasks[0]['title']);
      emit(TasksGetSUCCESS());
    }).catchError((error) {
      emit(TasksGetERROR());
    });
  }

  List FavTasks = [];
  getFavTasks() {
    emit(TasksFavLOADING());
    AppDioHelper.getdata(
            url: 'patient/fav/task/',
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}')
        .then((value) {
      FavTasks = value.data;
      print(FavTasks);
      emit(TasksFavSUCCESS());
    }).catchError((error) {
      emit(TasksFavERROR());
    });
  }

  List TrashTasks = [];
  getTrashTasks() {
    emit(TasksTrashLOADING());
    AppDioHelper.getdata(
            url: 'patient/trash/task/',
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}')
        .then((value) {
      TrashTasks = value.data;
      print(TrashTasks);
      emit(TasksTrashSUCCESS());
    }).catchError((error) {
      emit(TasksTrashERROR());
    });
  }

  List HideTasks = [];
  getHideTasks() {
    emit(TasksHideLOADING());
    AppDioHelper.getdata(
            url: 'patient/hidden/task/',
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}')
        .then((value) {
      HideTasks = value.data;
      print(HideTasks);
      emit(TasksHideSUCCESS());
    }).catchError((error) {
      print(error);
      emit(TasksHideERROR());
    });
  }

  List searchTasks = [];
  getSearchTasks({required search}) {
    emit(TasksSearchLOADING());
    AppDioHelper.getdata(
            url: 'patient/search/task/?q=${search}',
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}')
        .then((value) {
      searchTasks = value.data;
      print(searchTasks);
      emit(TasksSearchSUCCESS());
    }).catchError((error) {
      print(error);
      emit(TasksSearchERROR());
    });
  }

  deleteTask({required id}) {
    AppDioHelper.Delete(
            url: 'patient/delete/task/$id/',
            token: 'Bearer ${CacheNetwork.getCacheData(key: 'token')}')
        .then((value) {
      getAllTasks();
      emit(TasksDeleteSUCCESS());
    });
  }
}
