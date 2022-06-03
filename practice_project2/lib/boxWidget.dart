import 'package:flutter/cupertino.dart';

Widget boxWidget(colorr,{paramchild,heighttt=150.0,widthhh=200.0,marginn,}){
  return(Container(
    height:heighttt,
    width: widthhh,
    color: colorr,
    margin: marginn,
    child: paramchild,
    ));
}