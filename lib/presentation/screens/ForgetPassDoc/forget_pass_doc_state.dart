part of 'forget_pass_doc_cubit.dart';

@immutable
sealed class ForgetPassDocState {}

final class ForgetPassDocInitial extends ForgetPassDocState {}
final class ForgetPassERROR extends ForgetPassDocState {}
final class ForgetPassDocSUCCESS extends ForgetPassDocState {}
final class ForgetPassDocLOADING extends ForgetPassDocState {}
