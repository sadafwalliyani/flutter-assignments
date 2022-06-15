import 'package:flutter/cupertino.dart';

Widget textWidget(textt) {
  return ( 
    Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  textt,
                                 // textAlign: TextAlign.right,
              
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                    fontFamily: 'Play',
                  ),
                ),
              ),
            ));
}
