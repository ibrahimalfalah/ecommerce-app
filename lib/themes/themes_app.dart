import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme() => ThemeData(
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
      primarySwatch: Colors.deepOrange,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        elevation: 100.0,
        backgroundColor: Colors.white,
      ),
    );
