import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/gridview.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

class children extends StatefulWidget {
  const children({Key? key}) : super(key: key);

  @override
  State<children> createState() => _childrenState();
}

class _childrenState extends State<children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 380,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProductWidget(
                    'assests/oval7.png', "Sandy Willams", "Freelance Tailor "),
                SizedBox(
                  height: 5,
                ),
                txtwidget(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assests/screen4.png',
                      height: 300,
                      width: 200,
                    ),
                    
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                ProductWidget('assests/oval8.png', "Alero Samuel",
                    "Designer at toki designs"),
                SizedBox(
                  height: 5,
                ),
                txtwidget(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
