part of 'login_patient_cubit.dart';

@immutable
sealed class LoginPatientState {}

final class LoginPatientInitial extends LoginPatientState {}
final class RegisterLoadingState extends LoginPatientState {}
final class RegisterSuccessState extends LoginPatientState {}
final class FailedToRegisterState extends LoginPatientState {}
