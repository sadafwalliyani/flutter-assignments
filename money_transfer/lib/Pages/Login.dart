import 'package:flutter/material.dart';
import 'package:money_transfer/Pages/Open.dart';
import 'package:money_transfer/Widgets/Elevetedbutton.dart';
import 'package:money_transfer/Widgets/textfieldWidget.dart';

import '../Constant/app_colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: Column(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              height: 280,
              width: 325,
              color: Color(
                AppColorContant.shapeColor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "LOGIN WITH YOUR MOBILE PHONE NUMBER",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        fontFamily: 'RussoOne',
                      ),
                    ),
                  ),
                  //   SizedBox(height: 5,),
                  //    Image.asset(
                  //   'assests/2ndScreen.JPG',
                  //    height: 200,
                  //    width: 325,
                  // ),
                ],
              ),
            ),
          ),
          Center(
            child: Center(
                child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                textfieldWidget('textfield'),
                SizedBox(
                  height: 8.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Open()));
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontFamily: 'Play',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4D5DFA),
                    fixedSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
