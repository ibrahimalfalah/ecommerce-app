part of 'signup_cubit.dart';

@immutable
abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {}

class SignUpCreateUserSuccessState extends SignUpStates {}

class SignUpErrorState extends SignUpStates {
  final error;
  SignUpErrorState(this.error);
}

class SignUpCreateUserErrorState extends SignUpStates {
  final error;
  SignUpCreateUserErrorState(this.error);
}

class SignUpChangePasswordVisibilityState extends SignUpStates {}

class SignUpChangePasswordVisibilityState1 extends SignUpStates {}
