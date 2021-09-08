import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget facebookButton() => Container(
      width: double.infinity,
      height: 50.0,
      child: OutlinedButton(
        onPressed: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // Replace with a Row for horizontal icon + text
          children: [
            Image.asset(
              'images/icons/facebook.png',
              height: 25,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 25.0,
            ),
            Text(
              "Login with Facebook",
              style: TextStyle(
                fontSize: 15.0,
              ),
            )
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => HexColor('367FC0'),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white,
          ),
          padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.symmetric(vertical: 10),
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );

Widget googleButton() => Container(
      width: double.infinity,
      height: 50.0,
      child: OutlinedButton(
        onPressed: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/icons/google.png',
              height: 25,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 25.0,
            ),
            Text(
              "Login with Google",
              style: TextStyle(
                fontSize: 15.0,
              ),
            )
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => HexColor('DD4B39'),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white,
          ),
          padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.symmetric(vertical: 10),
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
