import 'package:e_commerce_app/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CheckMobileScreen extends StatelessWidget {
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              //code
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'We have sent an OTP to',
                    style: TextStyle(
                      color: HexColor('4A4B4D'),
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'your Mobile',
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
                    'please check your mobile number 079*****21 ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: HexColor('7C7D7E'),
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Text(
                    'continue to reset your password ',
                    style: TextStyle(
                      color: HexColor('7C7D7E'),
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  PinCodeTextField(
                    keyboardType: TextInputType.number,
                    appContext: context,
                    length: 4,
                    onChanged: (value) {},
                    //backgroundColor: HexColor('7C7D7E'),
                    hintCharacter: '*',
                    showCursor: false,
                    pinTheme: PinTheme(
                        selectedColor: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10.0),
                        shape: PinCodeFieldShape.box,
                        activeColor: HexColor('FC6011'),
                        inactiveColor: HexColor('7C7D7E'),
                        activeFillColor: HexColor('7C7D7E')),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55.0,
                    child: sharedButton(
                      text: 'Next',
                      colors: HexColor('FC6011'),
                      function: () {},
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn\'t Receive?',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: HexColor('7C7D7E'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Click Here',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor('FC6011'),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  lastDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
