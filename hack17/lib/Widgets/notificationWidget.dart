import 'package:flutter/material.dart';

Widget notofocationWidget(png, textt) {
  return (Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image(
          image: AssetImage(
        png,
      ),   color: Color(0xff006637),
      ),
      SizedBox(width: 10,),
      Container(
        height: 50,
        width: 250,
        child: Padding(
          padding: EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            textt,
            textAlign: TextAlign.left,
              style: TextStyle(
              fontFamily: 'Play',
              fontSize: 16,
              color: Color(0xff006637),
              wordSpacing: 2,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
      Image(
                  image: AssetImage(
        'assests/Vector.png',
        
      ),
         color: Color(0xff006637),
      )
    ],
  ));
}
