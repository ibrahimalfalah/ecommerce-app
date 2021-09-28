import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff4a4b4d),
                  ),
                  hintText: 'Search Food',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                    color: Colors.deepOrange,
                  ),
                ),

                ///
                Positioned(
                  top: 20,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 50.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 320,
                          maxHeight: 75,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Image(
                      width: 55,
                      height: 55,
                      image: AssetImage(
                        'images/icons/monkey.png',
                      )),
                ),
                Positioned(
                  top: 35,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ),
                        onPressed: () {},
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 120,
                  child: Text(
                    'Food',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xff4a4b4d),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 120,
                  child: Text(
                    '120  Items',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xffc2c3c3),
                    ),
                  ),
                ),

                ///
                Positioned(
                  top: 120,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 50.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 320,
                          maxHeight: 75,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 30,
                  child: Image(
                      width: 55,
                      height: 55,
                      image: AssetImage(
                        'images/icons/monkey.png',
                      )),
                ),
                Positioned(
                  top: 135,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ),
                        onPressed: () {},
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 125,
                  left: 120,
                  child: Text(
                    'Beverages',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xff4a4b4d),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  top: 165,
                  left: 120,
                  child: Text(
                    '220  Items',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xffc2c3c3),
                    ),
                  ),
                ),

                ///
                Positioned(
                  top: 220,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 50.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 320,
                          maxHeight: 75,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 30,
                  child: Image(
                      width: 55,
                      height: 55,
                      image: AssetImage(
                        'images/icons/monkey.png',
                      )),
                ),
                Positioned(
                  top: 235,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ),
                        onPressed: () {},
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 225,
                  left: 120,
                  child: Text(
                    'Desserts',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xff4a4b4d),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  top: 265,
                  left: 120,
                  child: Text(
                    '155  Items',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xffc2c3c3),
                    ),
                  ),
                ),

                ///
                Positioned(
                  top: 320,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 50.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 320,
                          maxHeight: 75,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 30,
                  child: Image(
                      width: 55,
                      height: 55,
                      image: AssetImage(
                        'images/icons/monkey.png',
                      )),
                ),
                Positioned(
                  top: 335,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ),
                        onPressed: () {},
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 325,
                  left: 120,
                  child: Text(
                    'Promotions',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xff4a4b4d),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  top: 365,
                  left: 120,
                  child: Text(
                    '25  Items',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xffc2c3c3),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
