import 'package:flutter/cupertino.dart';

Widget boxWidget(colorr,{paramchild,heightt=150.0,widthh=200.0,}){

  return Container(
    
    height: heightt,
    width: widthh,
    color: colorr,
    child: paramchild,
  );
}