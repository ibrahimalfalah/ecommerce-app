import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/model/user_model.dart';
import 'package:e_commerce_app/module/home/home.screen.dart';
import 'package:e_commerce_app/module/menu/menu.screen.dart';
import 'package:e_commerce_app/module/more/more.screen.dart';
import 'package:e_commerce_app/module/offers/offers.screen.dart';
import 'package:e_commerce_app/module/profile/profile.screen.dart';
import 'package:e_commerce_app/module/splash/splash_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

part 'cubit_app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int itemIndex = 0;

  List<Widget> item = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.shrink(),
        Icon(
          Icons.dashboard,
          color: HexColor('B6B7B7'),
          size: 30.0,
        ),
        Text(
          'Menu',
          style: TextStyle(
            color: HexColor('B6B7B7'),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.shrink(),
        Icon(
          Icons.work,
          color: HexColor('B6B7B7'),
          size: 30.0,
        ),
        Text(
          'Offers',
          style: TextStyle(
            color: HexColor('B6B7B7'),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.shrink(),
        Icon(
          Icons.home,
          color: HexColor('B6B7B7'),
          size: 30.0,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.shrink(),
        Icon(
          Icons.person,
          size: 30.0,
          color: HexColor('B6B7B7'),
        ),
        Text(
          'Profile',
          style: TextStyle(
            color: HexColor('B6B7B7'),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.shrink(),
        Icon(
          Icons.read_more_rounded,
          color: HexColor('B6B7B7'),
          size: 30.0,
        ),
        Text(
          'More',
          style: TextStyle(
            color: HexColor('B6B7B7'),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ];
  void changeIndexBottomNavBar(int index) {
    currentIndex = index;
    emit(AppBottomNavState());
  }

  List<Widget> screens = [
    MenuScreen(),
    OffersScreen(),
    HomeScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];

  UserModel? model;
  void getUserData() {
    emit(AppGetUserLoadingState());
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .snapshots()
        .listen((value) {
      model = null;
      model = UserModel.fromJson(value.data());
      emit(AppGetUserSuccessState());
    });
  }

  void signOut(context) {
    uId = '';
    navigateTO(context, SplashScreen());
    emit(SignOutState());
  }
}
