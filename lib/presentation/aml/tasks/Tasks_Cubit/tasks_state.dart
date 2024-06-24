part of 'tasks_cubit.dart';

@immutable
sealed class TasksState {}

final class TasksInitial extends TasksState {}
final class TasksGetLOADING extends TasksState {}
final class TasksGetERROR extends TasksState {}
final class TasksGetSUCCESS extends TasksState {}
final class TasksFavLOADING extends TasksState {}
final class TasksFavERROR extends TasksState {}
final class TasksFavSUCCESS extends TasksState {}
final class TasksTrashLOADING extends TasksState {}
final class TasksTrashERROR extends TasksState {}
final class TasksTrashSUCCESS extends TasksState {}
final class TasksHideLOADING extends TasksState {}
final class TasksHideERROR extends TasksState {}
final class TasksHideSUCCESS extends TasksState {}
final class TasksDeleteSUCCESS extends TasksState {}
final class TasksSearchERROR extends TasksState {}
final class TasksSearchLOADING extends TasksState {}

final class TasksSearchSUCCESS extends TasksState {}
