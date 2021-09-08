import 'package:e_commerce_app/module/login/login_screen.dart';
import 'package:e_commerce_app/module/signup/sign%20up_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage('images/icons/bg.png'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Image(
                fit: BoxFit.cover,
                image: AssetImage('images/icons/monkey.png'),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.12,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Meal',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: HexColor('FC6011'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                'Monkey',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: HexColor('848486'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            'FOOD DELIVERY',
            style: TextStyle(
              fontSize: 16.0,
              color: HexColor('9B9C9D'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            'Discover the best foods from over 1.000',
            style: TextStyle(
              fontSize: 16.0,
              color: HexColor('9B9C9D'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            'restaurants and fast delivery to your doorstep',
            style: TextStyle(
              fontSize: 16.0,
              color: HexColor('9B9C9D'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              child: sharedButton(
                text: 'Login',
                colors: HexColor('FC6011'),
                function: () {
                  navigateWithoutBack(context, LoginScreen());
                },
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              child: sharedButton(
                text: 'Create an Account',
                colors: Colors.white,
                function: () {
                  navigateWithoutBack(context, SignUpScreen());
                },
                style: TextStyle(
                  fontSize: 20.0,
                  color: HexColor('FC6011'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          lastDivider(),
        ],
      ),
    );
  }
}
