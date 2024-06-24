part of 'verify_cubit.dart';

@immutable
sealed class VerifyState {}

final class VerifyInitial extends VerifyState {}
final class VerifyLOADING extends VerifyState {}
final class VerifyERROR extends VerifyState {}
final class VerifySUCCESS extends VerifyState {}
