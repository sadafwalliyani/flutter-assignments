import 'package:flutter/material.dart';
import 'package:money_transfer/Widgets/offercontainerWidget.dart';
import 'package:money_transfer/Widgets/textWidget.dart';

import '../Constant/app_colors.dart';
import '../Widgets/containersWidget.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: 
      
      SingleChildScrollView(
        child: Column(
          children: [
            Center(
        child: Container(
          height: 180,
          width: 300,
          decoration: new BoxDecoration(
            color: Color(0xff1F222A),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Casbacks earned",
                          //  textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Play',
                            fontSize: 20,
                            color: Colors.white,
                            wordSpacing: 2,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "\$507",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: 36,
                      color: Color(0xffB0BEC5),
                      wordSpacing: 2,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "+ 88 Rs This month ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Play',
                      fontSize: 16,
                      color: Colors.white,
                      wordSpacing: 2,
                      letterSpacing: 2,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: 280,
                decoration: new BoxDecoration(
                  color: Color(0xff343645),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Add / Manage Accounts ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Play',
                      fontSize: 16,
                      color: Colors.white,
                      wordSpacing: 2,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
        ],
          ),
        ),
        
        
      ),
              textWidget("Collect Rewards"),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 101,
                  width: 100,                 
      decoration: new BoxDecoration(
              color: Color(0xff242042),
              borderRadius: BorderRadius.all(Radius.circular(20)),),
                child:  Align
    (
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Image(image: AssetImage('assests/Loading.png',),)))),

                 Container(
height: 101,
                  width: 100,                 
      decoration: new BoxDecoration(
              color: Color(0xff242042),
              borderRadius: BorderRadius.all(Radius.circular(20)),),                ),
                 Container(
height: 101,
                  width: 100,                 
      decoration: new BoxDecoration(
              color: Color(0xff242042),
              borderRadius: BorderRadius.all(Radius.circular(20)),),                ),
              
           
              ],
            ),
             Column(
            children: [
            textWidget("Collect Rewards"),
            Column(         
              children: [
                offercontainerWidget(0xff242042, 'assests/Vector-3.png',"Flat 50 off On food Delivery", "On orders above 99 on Swaggy, Somato", "Collect Now"),
            SizedBox(height: 5,),
           offercontainerWidget(0xff422038,'assests/image19.png', "20% Cashback On Amason", "Up to Rs 150 Minimum Order 1000", "Collect Now"),
                
            ],
            )
          ],),
        
            
      
          ],
        
          ),
      ));
  }
}
