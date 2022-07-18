import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/gridview.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

class women extends StatefulWidget {
  const women({Key? key}) : super(key: key);

  @override
  State<women> createState() => _womenState();
}

class _womenState extends State<women> {
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
                  height: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assests/screen4.png',
                      height: 200,
                      width: 200,
                    ),
                     Row(
                       children: [
                         RaisedButton(
                              onPressed: (){

          //  Navigator.pushReplacement<void,void>(context,
          //               MaterialPageRoute<void>(builder: (context) => TabBarrr()));

                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xffFE2550), Color(0xff000000)],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Container(
                                  constraints:
                                      BoxConstraints(maxWidth: 100, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "#Summer",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                                                     RaisedButton(
                              onPressed: (){

          //  Navigator.pushReplacement<void,void>(context,
          //               MaterialPageRoute<void>(builder: (context) => TabBarrr()));

                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xffFE2550), Color(0xff000000)],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Container(
                                  constraints:
                                      BoxConstraints(maxWidth: 100, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "#Purple",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                       ],
                     ),

                  ],
                ),
                   gridviewwidget(),
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
