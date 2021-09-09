import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/module/on_boarding_screen.dart';
import 'package:e_commerce_app/module/splash_screen.dart';
import 'package:e_commerce_app/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/bloc_observe.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hexcolor/hexcolor.dart';

import 'module/home_login_screen.dart';
import 'module/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  Widget widget;

  //var uId = CacheHelper.getData(key: 'uId');
  // if (uId != null) {
  //   widget = OnBoardingScreen();
  // } else {
  //   widget = SplashScreen();
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Widget widget;
  //MyApp(this.widget);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        primarySwatch: Colors.grey,
      ),
      themeMode: ThemeMode.light,
    );
  }
}
