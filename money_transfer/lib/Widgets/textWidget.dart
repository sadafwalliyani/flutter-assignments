import 'package:flutter/cupertino.dart';

Widget textWidget(textt) {
  return (Text(
    textt,
    textAlign: TextAlign.left,

    style: TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
      fontFamily: 'Play',
    ),
  ));
}
