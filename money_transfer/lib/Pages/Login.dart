import 'package:flutter/material.dart';
import 'package:money_transfer/Pages/Open.dart';
import 'package:money_transfer/Widgets/elevetedButtonWidget.dart';
import 'package:money_transfer/Widgets/textfieldWidget.dart';

import '../Constant/app_colors.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 325,
              color: Color(
                0xff7bbdce,
              ),
              child: SingleChildScrollView(
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
                          fontFamily: 'Play',
                        ),
                      ),
                    ),
                    SizedBox(height: 1),
                    Image.asset(
                      'assests/Login.gif',
                      height: 200,
                      width: 300,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  textfieldWidget('textfield'),
                  SizedBox(
                    height: 8.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          fontFamily: 'Play',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff7bbdce),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  )
                ],
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Your personal details are safe with us ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  fontFamily: 'Play',
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                "Read our Privacy Policy and Terms and Conditions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  fontFamily: 'Play',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
