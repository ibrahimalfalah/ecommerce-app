import 'package:e_commerce_app/cubit_app/cubit_app_cubit.dart';
import 'package:e_commerce_app/module/login/login_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var userModel = AppCubit.get(context).model;
          return Container(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Image(
                          image: NetworkImage(
                            '${userModel!.image}',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        left: -10,
                        child: Image(
                          width: 120,
                          image: AssetImage(
                            'images/icons/backimage.png',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        left: 28,
                        child: IconButton(
                          color: Colors.black.withOpacity(0.2),
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_rounded,
                            color: Color(0xff7e7d7e),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.deepOrange,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Hi there ${userModel.name}!',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff4a4b4d),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      signOut(context);
                    },
                    child: Text(
                      'Sign out',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff7e7d7e),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        //hintText: 'Ibrahim Alfalah',
                        //label: Text('Name'),
                        filled: true,
                        fillColor: Color(0xfff2f2f2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f2f2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f2f2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f2f2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f2f2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f2f2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      child: sharedButton(
                        text: 'Save',
                        colors: Colors.deepOrange,
                        function: () {},
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
//Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xfff2f2f2),
//                   prefixIcon: Icon(
//                     Icons.search,
//                     color: Color(0xff4a4b4d),
//                   ),
//                   hintText: 'Search Food',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),
