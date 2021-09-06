import 'package:e_commerce_app/module/reset_password_screen.dart';
import 'package:e_commerce_app/module/sign%20up_screen.dart';
import 'package:e_commerce_app/shared/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                  type: TextInputType.emailAddress,
                  controller: emailController,
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
                  isSecure: true,
                  suffix: Icons.remove_red_eye_outlined,
                  type: TextInputType.text,
                  controller: passwordController,
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
                  child: sharedButton(
                    text: 'Login',
                    colors: HexColor('FC6011'),
                    function: () {},
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
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
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Replace with a Row for horizontal icon + text
                      children: [
                        Image.asset(
                          'images/icons/facebook.png',
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Text(
                          "Login with Facebook",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => HexColor('367FC0'),
                      ),
                      foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white,
                      ),
                      padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.symmetric(vertical: 10),
                      ),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/icons/google.png',
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => HexColor('DD4B39'),
                      ),
                      foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white,
                      ),
                      padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.symmetric(vertical: 10),
                      ),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
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
    );
  }
}
