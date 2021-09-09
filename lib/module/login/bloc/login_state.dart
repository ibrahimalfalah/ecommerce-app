part of 'login_cubit.dart';

@immutable
abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final String uId;
  LoginSuccessState(this.uId);
}

class LoginErrorState extends LoginStates {
  final error;
  LoginErrorState(this.error);
}

class LoginChangePasswordVisibilityState extends LoginStates {}
