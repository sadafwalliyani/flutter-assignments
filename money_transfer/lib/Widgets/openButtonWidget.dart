import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget openButtonWidget(openbuttonwidget){
  return(
    ElevatedButton(onPressed: (){}, child: Text('INSTANT PAY',
    style:TextStyle(fontFamily: 'Play', fontSize: 20,fontWeight: FontWeight.bold),),
         style: ElevatedButton.styleFrom(
       primary: Color(0xff4D5DFA),
       fixedSize: Size(250, 50),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
     ),)
  );
}


