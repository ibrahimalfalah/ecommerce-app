import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce_app/module/login/bloc/login_cubit.dart';
import 'package:e_commerce_app/module/on_boarding/on_boarding_screen.dart';
import 'package:e_commerce_app/module/reset_password/reset_password_screen.dart';
import 'package:e_commerce_app/module/signup/sign%20up_screen.dart';
import 'package:e_commerce_app/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/widget/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) => {
          if (state is LoginSuccessState)
            {
              CacheHelper.saveData(
                key: 'uId',
                value: state.uId,
              ).then((value) {
                navigateWithoutBack(
                  context,
                  OnBoardingScreen(),
                );
              }),
            }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: HexColor('4A4B4D'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          'Add your details to login',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor('AEAFAF'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email Address Must not be Empty';
                            } else
                              return null;
                          },
                          type: TextInputType.emailAddress,
                          controller: LoginCubit.get(context).emailController,
                          label: 'your Email',
                          hint: 'name@example.com',
                          icon: Icons.email,
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
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        textField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is too Short';
                            } else
                              return null;
                          },
                          isSecure: LoginCubit.get(context).isPassword,
                          suffix: LoginCubit.get(context).suffix,
                          show: () {
                            LoginCubit.get(context).changePasswordVisibility();
                          },
                          type: TextInputType.text,
                          controller:
                              LoginCubit.get(context).passwordController,
                          label: 'your password',
                          hint: 'password',
                          icon: Icons.lock,
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
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          child: ConditionalBuilder(
                            condition: state is! LoginLoadingState,
                            builder: (context) => sharedButton(
                              text: 'Login',
                              colors: HexColor('FC6011'),
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  LoginCubit.get(context).userLogin(
                                    email: LoginCubit.get(context)
                                        .emailController
                                        .text,
                                    password: LoginCubit.get(context)
                                        .passwordController
                                        .text,
                                  );
                                  navigateWithoutBack(
                                      context, OnBoardingScreen());
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
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        TextButton(
                          onPressed: () {
                            navigateWithoutBack(context, ResetPasswordScreen());
                          },
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          'or Login With',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: HexColor('7C7D7E'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        facebookButton(
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        ConditionalBuilder(
                          condition: state is! LoginGoogleLoadingState,
                          builder: (context) => googleButton(
                            onPressed: () async {
                              UserCredential credit =
                                  await LoginCubit.get(context)
                                      .signInWithGoogle();
                              navigateWithoutBack(context, OnBoardingScreen());
                            },
                          ),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator()),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an Account?',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: HexColor('7C7D7E'),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                navigateWithoutBack(
                                  context,
                                  SignUpScreen(),
                                );
                              },
                              child: Text(
                                'Sign Up',
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
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        lastDivider(),
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
