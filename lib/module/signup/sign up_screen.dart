import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce_app/module/login/login_screen.dart';
import 'package:e_commerce_app/module/on_boarding/on_boarding_screen.dart';
import 'package:e_commerce_app/module/signup/sign%20up_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import 'bloc/signup_cubit.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {
          if (state is SignUpCreateUserSuccessState) {
            navigateWithoutBack(context, OnBoardingScreen());
          }
        },
        builder: (context, state) {
          var cubit = SignUpCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: HexColor('4A4B4D'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        Text(
                          'Add your details to sign up',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor('AEAFAF'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Name Must not be Empty';
                            } else
                              return null;
                          },
                          type: TextInputType.text,
                          controller: cubit.nameController,
                          hint: 'Name',
                          fillColor: HexColor('F2F2F2'),
                          focusColor: HexColor('F2F2F2'),
                          iconColor: Colors.grey,
                          borderSideColor: HexColor('F2F2F2'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email Address Must not be Empty';
                            } else
                              return null;
                          },
                          type: TextInputType.emailAddress,
                          controller: cubit.emailController,
                          hint: 'Email',
                          fillColor: HexColor('F2F2F2'),
                          focusColor: HexColor('F2F2F2'),
                          iconColor: Colors.grey,
                          borderSideColor: HexColor('F2F2F2'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Mobile Number Must not be Empty';
                            } else
                              return null;
                          },
                          type: TextInputType.phone,
                          controller: cubit.mobileController,
                          hint: 'Mobile No',
                          fillColor: HexColor('F2F2F2'),
                          focusColor: HexColor('F2F2F2'),
                          iconColor: Colors.grey,
                          borderSideColor: HexColor('F2F2F2'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Address Must not be Empty';
                            } else
                              return null;
                          },
                          type: TextInputType.text,
                          controller: cubit.addressController,
                          hint: 'Address',
                          fillColor: HexColor('F2F2F2'),
                          focusColor: HexColor('F2F2F2'),
                          iconColor: Colors.grey,
                          borderSideColor: HexColor('F2F2F2'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is too Short';
                            } else
                              return null;
                          },
                          type: TextInputType.text,
                          isSecure: cubit.isPassword,
                          suffix: cubit.suffix,
                          show: () {
                            cubit.changePasswordVisibility();
                          },
                          controller: cubit.passwordController,
                          hint: 'Password',
                          fillColor: HexColor('F2F2F2'),
                          focusColor: HexColor('F2F2F2'),
                          iconColor: Colors.grey,
                          borderSideColor: HexColor('F2F2F2'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'You must to Return the Password';
                            } else
                              return null;
                          },
                          type: TextInputType.text,
                          isSecure: cubit.isPassword1,
                          suffix: cubit.suffix1,
                          show: () {
                            cubit.changePasswordVisibility1();
                          },
                          controller: cubit.confirmPasswordController,
                          hint: 'Confirm Password',
                          fillColor: HexColor('F2F2F2'),
                          focusColor: HexColor('F2F2F2'),
                          iconColor: Colors.grey,
                          borderSideColor: HexColor('F2F2F2'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.021,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          child: ConditionalBuilder(
                            condition: state is! SignUpLoadingState,
                            builder: (context) => sharedButton(
                              text: 'Sign Up',
                              colors: HexColor('FC6011'),
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  if (cubit.passwordController.text ==
                                      cubit.confirmPasswordController.text) {
                                    cubit.userRegister(
                                      name: cubit.nameController.text,
                                      email: cubit.emailController.text,
                                      mobile: cubit.mobileController.text,
                                      address: cubit.addressController.text,
                                      password: cubit.passwordController.text,
                                      confirmPassword:
                                          cubit.confirmPasswordController.text,
                                    );
                                  } else {
                                    return 'The passwords are not the same';
                                  }
                                }
                              },
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            fallback: (context) =>
                                Center(child: CircularProgressIndicator()),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an Account?',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: HexColor('7C7D7E'),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                navigateWithoutBack(
                                  context,
                                  LoginScreen(),
                                );
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: HexColor('FC6011'),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        lastDivider(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
