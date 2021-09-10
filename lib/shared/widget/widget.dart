import 'package:e_commerce_app/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget facebookButton({
  required Function()? onPressed,
}) =>
    Container(
      width: double.infinity,
      height: 50.0,
      child: OutlinedButton(
        onPressed: onPressed,
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

Widget googleButton({required Function()? onPressed}) => Container(
      width: double.infinity,
      height: 50.0,
      child: OutlinedButton(
        onPressed: onPressed,
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

Widget buildBorderingItem(context, BoardingModel model) => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage('${model.image}'),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Text(
          '${model.body}',
          style: TextStyle(
            color: HexColor('4A4B4D'),
            fontWeight: FontWeight.w900,
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Text(
          '${model.body1}',
          style: TextStyle(
            color: HexColor('7C7D7E'),
            fontWeight: FontWeight.w900,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Text(
          '${model.body2}',
          style: TextStyle(
            color: HexColor('7C7D7E'),
            fontWeight: FontWeight.w900,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Text(
          '${model.body3}',
          style: TextStyle(
            color: HexColor('7C7D7E'),
            fontWeight: FontWeight.w900,
            fontSize: 18.0,
          ),
        ),
      ],
    );
