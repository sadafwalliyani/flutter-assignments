

import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Tabbar.dart';
import 'package:money_transfer/Widgets/circleavatarWidget.dart';
import 'package:money_transfer/Widgets/notificationWidget.dart';

class profiile extends StatefulWidget {
  const profiile({Key? key}) : super(key: key);

  @override
  State<profiile> createState() => _profiileState();
}

class _profiileState extends State<profiile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  height: 264,
                  width: 300,
                  decoration: new BoxDecoration(
                    color: Color(0xff1F222A),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: 
                  Row(
                    children: [
                    circleavatarWidget('assests/Frozen.png'),           
                    
                    Container(
                      height: 50,
                      width: 150,
                      child: Column( 
                        
                          children: [
                          Text('Elsa',                        
                          style:TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,fontFamily: 
                          'Russo-One',color: Colors.white)),
                          Text("Level 4 Ace Member",                        
                          style:TextStyle(fontSize: 13,
                          fontWeight: FontWeight.bold,fontFamily: 
                          'Russo-One',color: Color(0xffB0BEC5))),
                          Image(
          image: AssetImage(
        'assests/Rectangle 28.png'),
        color: Color(0xff4D5DFA),),
                        ],
                      ),
                    ),

                    
 IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TabBarrr()));
                        },
                        icon: Icon(
                          Icons.close_rounded,
                          color: Color(0xffFfffff),
                        )),
                  ],
                    
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 264,
              width: 300,
              decoration: new BoxDecoration(
                color: Color(0xff1F222A),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 6,
                  bottom: 6,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    notofocationWidget(
                        'assests/receipt-minus.png', "All Transactions"),
                    notofocationWidget(
                        'assests/Caution Sign-1.png', "Pending Transactions"),
                    notofocationWidget('assests/Clock.png', "Refund status"),
                    notofocationWidget('assests/!-1.png', "Raise an issue"),
                    notofocationWidget(
                        'assests/Vector (Stroke).png', "Help and Support"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              width: 300,
              decoration: new BoxDecoration(
                color: Color(0xff1F222A),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 6,
                  bottom: 6,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    notofocationWidget('assests/Caution Sign.png', "About Us"),
                    notofocationWidget(
                        'assests/Clock.png', "Terms and Conditions"),
                    notofocationWidget('assests/!-1.png', "Feedback"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
