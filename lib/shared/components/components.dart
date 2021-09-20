import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget sharedButton({
  required String text,
  required Color colors,
  required Function()? function,
  required TextStyle style,
}) =>
    MaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: HexColor('FC6011'),
        ),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Text(
        text,
        style: style,
      ),
      onPressed: function,
      color: colors,
    );

Widget textField({
  required TextEditingController controller,
  required Color fillColor,
  required Color focusColor,
  required Color iconColor,
  required Color borderSideColor,
  String? hint,
  String? label,
  required TextStyle style,
  required TextStyle hintStyle,
  IconData? icon,
  IconData? suffix,
  required TextInputType type,
  required String? Function(String?)? validator,
  bool isSecure = false,
  Function()? show,
}) =>
    TextFormField(
      obscureText: isSecure,
      cursorColor: Colors.grey[800],
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        focusColor: focusColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            25.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(
            25.0,
          ),
        ),
        labelText: label,
        hintText: hint,
        hintStyle: hintStyle,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: show,
                icon: Icon(suffix),
                color: iconColor,
              )
            : null,
        prefixIcon: Icon(
          icon,
          color: iconColor,
        ),
      ),
      keyboardType: type,
      controller: controller,
      style: style,
    );

void navigateTO(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateWithoutBack(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (Route<dynamic> route) => false,
    );
Widget lastDivider() => Container(
      decoration: BoxDecoration(
        color: HexColor('4A4B4D'),
        borderRadius: BorderRadius.circular(25.0),
      ),
      height: 6.0,
      width: 130.0,
    );
