import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Tabbar.dart';

class Notificationss extends StatefulWidget {
  const Notificationss({Key? key}) : super(key: key);

  @override
  State<Notificationss> createState() => _NotificationssState();
}

class _NotificationssState extends State<Notificationss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Container(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Notifications",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                        fontFamily: 'Play',
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
                        ))
                  ],
                ),
              )),
              Container(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Recent Notifications",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                        fontFamily: 'Play',
                      ),
                    ),
                    IconButton(
                      icon: Image.asset('assests/image-44.jpg'),
                      iconSize: 20,
                      onPressed: () {},
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
