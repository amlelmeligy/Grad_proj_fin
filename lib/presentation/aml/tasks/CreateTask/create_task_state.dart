part of 'create_task_cubit.dart';

@immutable
sealed class CreateTaskState {}

final class CreateTaskInitial extends CreateTaskState {}
final class CreateTaskSUCCESS extends CreateTaskState {}
