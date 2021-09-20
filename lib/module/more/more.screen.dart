import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'More',
          style: TextStyle(
            color: Color(0xff4a4b4d),
            fontSize: 26.0,
          ),
        ),
      ),
      body: Stack(children: [
        Positioned(
          top: 10,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 70,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffc2c3c3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 30,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 25,
            child: Image(
              width: 45,
              height: 45,
              color: Color(0xff4a4b4d),
              image: AssetImage(
                'images/icons/dollar.png',
              ),
            ),
          ),
        ),
        Positioned(
          top: 25,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onPressed: () {},
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 90,
          child: Text(
            'Payment Details',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xff4a4b4d),
            ),
          ),
        ),

        ///
        Positioned(
          top: 100,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 70,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffc2c3c3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 30,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 25,
            child: Icon(
              Icons.work,
              color: Color(0xff4a4b4d),
              size: 30,
            ),
          ),
        ),
        Positioned(
          top: 115,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onPressed: () {},
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: 90,
          child: Text(
            'My Orders',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xff4a4b4d),
            ),
          ),
        ),

        ///
        Positioned(
          top: 190,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 70,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffc2c3c3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 30,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 25,
            child: Icon(
              Icons.notifications,
              color: Color(0xff4a4b4d),
              size: 35,
            ),
          ),
        ),
        Positioned(
          top: 205,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onPressed: () {},
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
        Positioned(
          top: 205,
          right: 80,
          child: CircleAvatar(
            backgroundColor: Colors.red[800],
            radius: 20,
            child: Text(
              '15',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: 210,
          left: 90,
          child: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xff4a4b4d),
            ),
          ),
        ),

        ///
        Positioned(
          top: 280,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 70,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffc2c3c3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 290,
          left: 30,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 25,
            child: Icon(
              Icons.email,
              color: Color(0xff4a4b4d),
              size: 30,
            ),
          ),
        ),
        Positioned(
          top: 295,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onPressed: () {},
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
        Positioned(
          top: 300,
          left: 90,
          child: Text(
            'Inbox',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xff4a4b4d),
            ),
          ),
        ),

        ///
        Positioned(
          top: 370,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 70,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffc2c3c3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 380,
          left: 30,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 25,
            child: Image(
              width: 40.0,
              height: 40.0,
              image: AssetImage('images/icons/info.png'),
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
        Positioned(
          top: 385,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Color(0xffd8d8d8),
            radius: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onPressed: () {},
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
        Positioned(
          top: 390,
          left: 90,
          child: Text(
            'About Us',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xff4a4b4d),
            ),
          ),
        ),
      ]),
    );
  }
}
