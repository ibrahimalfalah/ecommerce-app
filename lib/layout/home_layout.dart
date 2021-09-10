import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/cubit_app/cubit_app_cubit.dart';
import 'package:e_commerce_app/module/home/home.screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeLayout extends StatelessWidget {
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.deepOrange,
            buttonBackgroundColor: Colors.deepOrange,
            index: cubit.currentIndex,
            onTap: (index) {
              cubit.changeIndexBottomNavBar(index);
            },
            items: [
              cubit.item[cubit.itemIndex],
              cubit.item[cubit.itemIndex + 1],
              cubit.item[cubit.itemIndex + 2],
              cubit.item[cubit.itemIndex + 3],
              cubit.item[cubit.itemIndex + 4],
            ],
          ),
        );
      },
    );
  }
}
