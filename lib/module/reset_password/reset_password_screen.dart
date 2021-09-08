import 'package:e_commerce_app/module/reset_password/check_mobile_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ResetPasswordScreen extends StatelessWidget {
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Reset Password',
                  style: TextStyle(
                    color: HexColor('4A4B4D'),
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  'please enter your email to receive a ',
                  style: TextStyle(
                    color: HexColor('7C7D7E'),
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  'link to create a new password via email',
                  style: TextStyle(
                    color: HexColor('7C7D7E'),
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                textField(
                    validator: (value) {},
                    controller: emailController,
                    fillColor: HexColor('F2F2F2'),
                    hint: 'Email',
                    focusColor: Colors.grey,
                    iconColor: Colors.grey,
                    borderSideColor: HexColor('F2F2F2'),
                    style: TextStyle(),
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      color: HexColor('4A4B4D'),
                    ),
                    type: TextInputType.emailAddress),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55.0,
                  child: sharedButton(
                    text: 'Send',
                    colors: HexColor('FC6011'),
                    function: () {
                      navigateWithoutBack(context, CheckMobileScreen());
                    },
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                lastDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
