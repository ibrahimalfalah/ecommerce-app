import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/cubit_app/cubit_app_cubit.dart';
import 'package:e_commerce_app/layout/home_layout.dart';
import 'package:e_commerce_app/module/on_boarding/on_boarding_screen.dart';
import 'package:e_commerce_app/module/splash/splash_screen.dart';
import 'package:e_commerce_app/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/bloc_observe.dart';
import 'package:e_commerce_app/shared/components/constants.dart';
import 'package:e_commerce_app/themes/themes_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'module/login/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  Widget? widget;

  uId = CacheHelper.getData(key: 'uId');
  print("uId is $uId");

  if (uId != null) {
    widget = HomeLayout();
  } else {
    widget = SplashScreen();
  }

  runApp(MyApp(widget));
}

class MyApp extends StatelessWidget {
  late final Widget startWidget;
  MyApp(this.startWidget);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getUserData(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: startWidget,
            theme: lightTheme(),
            themeMode: ThemeMode.light,
          );
        },
      ),
    );
  }
}
