import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textnotiWidget(text1, text2, text3) {
  return (Container(
    height: 80,
    width: 380,
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                  height: 90,
                  width: 210,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 6,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            text1,
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xff006637),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),
                          Text(
                            text2,
                            style: TextStyle(
                              color: Color(0xff006637),
                              fontSize: 15,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),
                          Text(
                            text3,
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            style: TextStyle(
                              color: Color(0xff006637),
                              fontSize: 12,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),
                        ]),
                  ))),
          SizedBox(
            width: 90,
          ),
          Container(
              // height: 200,
              child: Center(
            child: Stack(
              children: [
                Image(
                  image: AssetImage(
                    'assests/image-45.png',
                  ),
                  color: Color(0xff006637),
                  height: 300,
                ),
                           Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 24,
                  ),
                  child: Image(
                    image: AssetImage(
                      'assests/Group 880.png',
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    ),
  ));
}
