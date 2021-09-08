import 'package:e_commerce_app/module/login/login_screen.dart';
import 'package:e_commerce_app/module/signup/sign%20up_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import 'bloc/signup_cubit.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
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
                        controller: SignUpCubit.get(context).nameController,
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
                        controller: SignUpCubit.get(context).emailController,
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
                        controller: SignUpCubit.get(context).mobileController,
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
                        controller: SignUpCubit.get(context).addressController,
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
                        isSecure: SignUpCubit.get(context).isPassword,
                        suffix: SignUpCubit.get(context).suffix,
                        show: () {
                          SignUpCubit.get(context).changePasswordVisibility();
                        },
                        controller: SignUpCubit.get(context).passwordController,
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
                        isSecure: SignUpCubit.get(context).isPassword,
                        suffix: SignUpCubit.get(context).suffix,
                        show: () {
                          SignUpCubit.get(context).changePasswordVisibility();
                        },
                        controller:
                            SignUpCubit.get(context).confirmPasswordController,
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
                        child: sharedButton(
                          text: 'Sign Up',
                          colors: HexColor('FC6011'),
                          function: () {},
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
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
          );
        },
      ),
    );
  }
}
