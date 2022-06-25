import 'package:flutter/material.dart';

Widget profilebuttonsWidget(textt, png) {
  return (Container(
    height: 30,
    width: 98,
    decoration: new BoxDecoration(
        color: Color(0xff343645),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Padding(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 5,
        right: 5,
      ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          
        Text(          
          textt,
      
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Play',
            fontSize: 14,
            color: Colors.white,
            wordSpacing: 2,
            // letterSpacing: 2,
          ),
        ),
        Image(
            image: AssetImage(
          png,
        )),
      ]),
    ),
  ));
}
