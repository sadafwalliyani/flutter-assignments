import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Open extends StatefulWidget {
  const Open({Key? key}) : super(key: key);

  @override
  State<Open> createState() => _OpenState();
}

class _OpenState extends State<Open> with SingleTickerProviderStateMixin {
  final _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff683ab6),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Image.asset(
              'assests/openscreen.gif',
              height: 250,
              width: 300,
            ),
            SizedBox(
              height: 60,
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
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4D5DFA),
                  fixedSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  shadowColor: Colors.purple,
                ),
              ),
            ),
            Container(
              child: Text(
                "Your Perfect Payment Partner",
                style: TextStyle(
                  color: Colors.white,
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
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Colors.deepPurple.shade100,
                dotColor: Color(AppColorContant.shapeColor),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 16,
                //verticalOffset: 50,
                jumpScale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
