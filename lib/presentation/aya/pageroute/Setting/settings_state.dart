part of 'settings_cubit.dart';

@immutable
sealed class SettingsState {}

final class SettingsInitial extends SettingsState {}
final class SettingsGetInfoSUCCESS extends SettingsState {}
final class SettingsGetInfoERROR extends SettingsState {}
final class SettingsGetInfoLOADING extends SettingsState {}
final class SettingsUpdateInfoLOADING extends SettingsState {}
final class PickProfileErrorState extends SettingsState {}
final class PickProfileSuccesState extends SettingsState {}
final class ConfirmOrderImageFromGalleryState extends SettingsState {}
