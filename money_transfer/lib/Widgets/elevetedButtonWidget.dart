import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget elevatedBttonWidget(elevatedbuttonwidget) {
  return Column(children: [
    (ElevatedButton(
      onPressed: () {},
      child: Text(
        "Scan QR Code",
        style: TextStyle(
            fontFamily: 'Play', fontSize: 16, fontWeight: FontWeight.w100),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xff5B2E62),
        fixedSize: Size(150, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    )
  ),
  ]);
}

