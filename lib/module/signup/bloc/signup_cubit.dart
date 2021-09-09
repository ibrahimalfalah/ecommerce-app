import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var addressController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  IconData suffix = Icons.visibility_outlined;
  IconData suffix1 = Icons.visibility_outlined;
  bool isPassword = true;
  bool isPassword1 = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;

    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(SignUpChangePasswordVisibilityState());
  }

  void changePasswordVisibility1() {
    isPassword1 = !isPassword1;

    suffix1 =
        isPassword1 ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(SignUpChangePasswordVisibilityState1());
  }

  void userRegister({
    required String name,
    required String email,
    required String mobile,
    required String address,
    required String password,
    required String confirmPassword,
  }) {
    emit(SignUpLoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then(
      (value) {
        userCreate(
          name: name,
          email: email,
          mobile: mobile,
          address: address,
          uId: value.user!.uid,
        );
      },
    ).catchError((error) {
      emit(SignUpErrorState(error.toString()));
    });
  }

  void userCreate({
    required String name,
    required String email,
    required String mobile,
    required String address,
    required String uId,
  }) {
    UserModel model = UserModel(
      name: name,
      email: email,
      mobile: mobile,
      address: address,
      uId: uId,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      emit(SignUpCreateUserSuccessState());
    }).catchError((error) {
      emit(SignUpCreateUserErrorState(error.toString()));
    });
  }
}
