import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Tabbar.dart';
import 'package:money_transfer/Widgets/circleavatarWidget.dart';
import 'package:money_transfer/Widgets/notificationWidget.dart';
import 'package:money_transfer/Widgets/profilebuttonsWidget.dart';

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 310,
                  decoration: new BoxDecoration(
                    color: Color(0xff1F222A),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(children: [
                      Row(
                        children: [
                          circleavatarWidget('assests/Frozen.png'),
                          Container(
                            height: 80,
                            width: 180,
                            child: Column(children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('Elsa',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Russo-One',
                                          color: Colors.white)),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      image:
                                          AssetImage('assests/Group 751.png')),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 35,
                                ),
                                child: Text("Level 4 Ace Member",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Russo-One',
                                        color: Color(0xffB0BEC5))),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 45,
                                      ),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assests/Rectangle 28.png'),
                                            color: Color(0xff4D5DFA),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image(
                                            image:
                                                AssetImage('assests/Lv 5.png'),
                                            color: Color(0xff4D5DFA),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TabBarrr()));
                              },
                              icon: Image.asset(
                                'assests/close-circle.png',
                              ),
                              iconSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Text('1,208',
                                style: TextStyle(
                                  color: Color(
                                    0xff4D5DFA,
                                  ),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Russo-One',
                                )),
                            Text('Transaction',
                                style: TextStyle(
                                  color: Color(
                                    0xff939FA4,
                                  ),
                                  fontSize: 14,
                                  fontFamily: 'Play',
                                )),
                          ]),
                          Image(image: AssetImage('assests/Linees.jpg')),
                          Column(
                            children: [
                              Text('726',
                                  style: TextStyle(
                                    color: Color(
                                      0xff4D5DFA,
                                    ),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Russo-One',
                                  )),
                              Text('Points',
                                  style: TextStyle(
                                    color: Color(
                                      0xff939FA4,
                                    ),
                                    fontSize: 14,
                                    fontFamily: 'Play',
                                  )),
                            ],
                          ),
                          Image(image: AssetImage('assests/Linees.jpg')),
                          Column(
                            children: [
                              Text('8',
                                  style: TextStyle(
                                    color: Color(
                                      0xff4D5DFA,
                                    ),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Russo-One',
                                  )),
                              Text('Rank',
                                  style: TextStyle(
                                    color: Color(
                                      0xff939FA4,
                                    ),
                                    fontSize: 14,
                                    fontFamily: 'Play',
                                  )),
                            ],
                          ),
                          profilebuttonsWidget(
                              "Explore", 'assests/group 1.png'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          profilebuttonsWidget(
                              "EditProfile", 'assests/user-edit.png'),
                          profilebuttonsWidget(
                              "Setting", 'assests/Union.png'),
                          profilebuttonsWidget("Share", 'assests/share.png'),
                        ],
                      ),
                    ]),
                  ),
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
                        notofocationWidget('assests/Caution Sign-1.png',
                            "Pending Transactions"),
                        notofocationWidget(
                            'assests/Clock.png', "Refund status"),
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
                        notofocationWidget(
                            'assests/Caution Sign.png', "About Us"),
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
        ),
      ),
    );
  }
}
