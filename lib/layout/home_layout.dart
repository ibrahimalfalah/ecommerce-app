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
        List<Widget> appBarName = [
          Text(
            'Menu',
            style: TextStyle(
              color: Color(0xff4a4b4d),
              fontSize: 20.0,
            ),
          ),
          Text(
            'Latest Offers',
            style: TextStyle(
              color: Color(0xff4a4b4d),
              fontSize: 20.0,
            ),
          ),
          Text(
            'Good Morning ${cubit.model!.name}!',
            style: TextStyle(
              color: Color(0xff4a4b4d),
              fontSize: 20.0,
            ),
          ),
          Text(
            'Profile',
            style: TextStyle(
              color: Color(0xff4a4b4d),
              fontSize: 20.0,
            ),
          ),
          Text(
            'More',
            style: TextStyle(
              color: Color(0xff4a4b4d),
              fontSize: 20.0,
            ),
          ),
        ];
        return Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                  ),
                  color: Color(0xff4a4b4d),
                ),
              ),
            ],
            title: appBarName[cubit.currentIndex],
          ),
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
