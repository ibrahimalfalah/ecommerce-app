part of 'cubit_app_cubit.dart';

@immutable
abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppBottomNavState extends AppStates {}

class AppGetUserLoadingState extends AppStates {}

class AppGetUserSuccessState extends AppStates {}

class AppGetUserErrorState extends AppStates {
  final String error;
  AppGetUserErrorState(this.error);
}
