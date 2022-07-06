import 'package:flutter/material.dart';
import 'package:login_screen/Pages/Tabbar.dart';
import 'package:login_screen/Widgets/circleavatarWidget.dart';
import 'package:login_screen/Widgets/notificationWidget.dart';
import 'package:login_screen/Widgets/profilebuttonsWidget.dart';

class profiile extends StatefulWidget {
  const profiile({Key? key}) : super(key: key);

  @override
  State<profiile> createState() => _profiileState();
}

class _profiileState extends State<profiile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 128, 190, 241),
          Colors.white,
          Color(0xff006637),
        ],
      )
      ),
   child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 390,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(children: [
                      Row(
                        children: [
                          circleavatarWidget('assests/sadaf.jpg'),
                          Container(
                            height: 80,
                            width: 180,
                            child: Column(children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('SadafW',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Arima',
                                          color: Color(0xff006637))),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      image:
                                          AssetImage('assests/Group 751.png'),
                                          ),
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
                                        fontFamily: 'Arima',
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
                                            color: Color(0xff006637),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image(
                                            image:
                                                AssetImage('assests/Lv 5.png'),
                                            color: Color(0xff006637),
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
                              iconSize: 35,
                            color:Color(0xff006637), ),
                           
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
                                   0xff006637,
                                  ),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Arima',
                                )),
                            Text('Achieved',
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
                                        0xff006637,
                                    ),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Arima',
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
                              Text('1',
                                  style: TextStyle(
                                    color: Color(
                                      0xff006637,
                                    ),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Arima',
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
                  height: 20,
                ),
                Container(
                  height: 264,
                  width: 390,
                  decoration: new BoxDecoration(
                    color: Colors.white,
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
                            'assests/receipt-minus.png', "All Assignments"),
                        notofocationWidget('assests/Caution Sign-1.png',
                            "Pending Assignments"),
                        notofocationWidget(
                            'assests/Clock.png', "Course Status"),
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
                  width: 390,
                  decoration: new BoxDecoration(
                    color: Colors.white,
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
      ),)
    ));
  }
}

