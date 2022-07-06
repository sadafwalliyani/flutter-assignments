import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget circleavatarWidget(img){
  return(
     CircleAvatar(
                radius: 35,
              child: CircleAvatar(
                radius: 34,
                backgroundImage:                       
                AssetImage(img),)
              ));
}