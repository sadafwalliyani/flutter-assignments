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
                              fontSize: 10,
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
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),
                        ]),
                  ))),
          SizedBox(
            width: 30,
          ),
          Container(
              height: 90,
              child: Center(
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(
                        'assests/image-45.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 4,
                      ),
                      child: Image(
                        image: AssetImage(
                          'assests/Group 880.png',
                        ),
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
