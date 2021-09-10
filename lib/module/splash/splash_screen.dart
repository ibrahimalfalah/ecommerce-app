import 'package:e_commerce_app/module/home_login/home_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextView();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage(
              'images/icons/backsplash.png',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                fit: BoxFit.cover,
                width: 150,
                height: 150,
                image: AssetImage(
                  'images/icons/monkey.png',
                ),
              ),
              SizedBox(
                height: 10.0,
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
                    width: 5.0,
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
                height: 10.0,
              ),
              Text(
                'FOOD DELIVERY',
                style: TextStyle(
                  fontSize: 20.0,
                  color: HexColor('9B9C9D'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void goToNextView() {
  Future.delayed(Duration(seconds: 3), () {
    Get.to(() => HomeLoginScreen(), transition: Transition.fade);
  });
}
