import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circleavatarWidget(img){
  return(
    CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(img),
              ),
            )
  );
}