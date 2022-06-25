import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/Constant/app_colors.dart';


Widget circleavatarWidget(img){
  return(
     CircleAvatar(
                radius: 35,
                backgroundColor: Color(AppColorContant.screenColor,),
              child: CircleAvatar(
                radius: 34,
                backgroundImage:                       
                AssetImage(img),)
              ));
}