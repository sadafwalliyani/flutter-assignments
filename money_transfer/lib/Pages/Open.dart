import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Login.dart';

class Open extends StatefulWidget {
  const Open({Key? key}) : super(key: key);

  @override
  State<Open> createState() => _OpenState();
}

class _OpenState extends State<Open> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'assests/Logo.JPG',
               height: 100,
               width: 100,
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "INSTANT PAY",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    fontFamily: 'RussoOne',
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "Your Perfect Payment Partner",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
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
