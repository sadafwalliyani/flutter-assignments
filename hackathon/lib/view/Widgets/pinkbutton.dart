import 'package:flutter/material.dart';

Widget pinkbtn(txt,width) {
  return (
    ElevatedButton(
    onPressed: () {
      //  Navigator.pushReplacement<void,void>(context,
      //               MaterialPageRoute<void>(builder: (context) => TabBarrr()));
    },

style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFE2550),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),          
                              child: Ink(
      decoration: BoxDecoration(
        color: Color(0xffFE2550),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth:width, maxHeight: 50),
        alignment: Alignment.center,
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ));
}
