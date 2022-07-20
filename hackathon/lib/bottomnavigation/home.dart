import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Pages/Tabbar.dart';
import 'package:practiceoftest/Pages/women.dart';
import 'package:practiceoftest/Widgets/buttonwidget.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/Widgets/toppostswidget.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: BottomComtroller(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("5182 Items found for “Top”",
               style: GoogleFonts.raleway(
                      color: Color.fromARGB(255, 170, 156, 156),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                toppostswidget('assests/group1.png', "\$25.99", "White strap plunge top"),
                toppostswidget('assests/Bitmap5.png', "\$25.99", "Grey winter cardigan"),
                
              ],),
              
              SizedBox(height: 5,),
               Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assests/oval7.png'),
                ),
                Text(
                    "SANDY WILLIAMS",
                    style: GoogleFonts.raleway(
                      color: Color.fromARGB(255, 170, 156, 156),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assests/oval8.png'),
                ),
                Text(
                    "Alero Samuel",
                    style: GoogleFonts.raleway(
                      color: Color.fromARGB(255, 170, 156, 156),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
        
              ],),
              
              SizedBox(height: 5,),
              Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        toppostswidget('assests/Bitmap-1.png', "\$25.99", "White strap plunge top"),
            toppostswidget('assests/Bitmap-2.png', "\$25.99", "White strap plunge top"),
        
              ],)
            ],
          ),
        ),
      )
     
     
    );
  }
}
