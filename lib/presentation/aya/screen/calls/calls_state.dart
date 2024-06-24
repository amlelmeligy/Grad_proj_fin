part of 'calls_cubit.dart';

@immutable
sealed class CallsState {}

final class CallsInitial extends CallsState {}
final class GetCallsLOADING extends CallsState {}
final class GetCallsERROR extends CallsState {}
final class GetCallsSUCCESS extends CallsState {}
