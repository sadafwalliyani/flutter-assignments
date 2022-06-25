import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget offerWidget(colorr, png, text1, text2, text3) {
  return (Container(
    height: 90,
    width: 300,
    decoration: new BoxDecoration(
      color: Color(colorr),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Row(
      children: [
        Container(
            height: 90,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Image(
                      image: AssetImage(
                       'assests/Vector-3.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 9,
                  ),
                  child: Container(
                    child: Image(
                      image: AssetImage(
                        png,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Padding(
            padding: EdgeInsets.only(top:5),
            child: Container(
                height: 90,
                width: 210,
                child: Align(
                  //  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            text1,
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            text2,
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Text(
                            text3,
                            textAlign: TextAlign.left,
                            maxLines:2,
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: 'Play',
                            ),
                          ),

                        ]),
                  ),
                )
                )
                ),
                
          
      ],
    ),
  ));
}
