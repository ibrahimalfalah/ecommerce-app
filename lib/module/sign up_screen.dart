import 'package:e_commerce_app/module/login_screen.dart';
import 'package:e_commerce_app/module/sign%20up_screen.dart';
import 'package:e_commerce_app/shared/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var addressController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: SingleChildScrollView(
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
                  type: TextInputType.text,
                  controller: nameController,
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
                  type: TextInputType.emailAddress,
                  controller: emailController,
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
                  type: TextInputType.phone,
                  controller: mobileController,
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
                  type: TextInputType.text,
                  controller: addressController,
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
                  type: TextInputType.text,
                  isSecure: true,
                  suffix: Icons.remove_red_eye_outlined,
                  controller: passwordController,
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
                  type: TextInputType.text,
                  isSecure: true,
                  suffix: Icons.remove_red_eye_outlined,
                  controller: confirmPasswordController,
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
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('4A4B4D'),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  height: 6.0,
                  width: 130.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
