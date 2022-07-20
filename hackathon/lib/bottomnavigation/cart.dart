import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/Widgets/cartwidget.dart';
import 'package:practiceoftest/Widgets/paynowbutton.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
   return
   Scaffold(
    body: SingleChildScrollView(
      child: Column(
        
        
        children: [
        cartwidget('assests/Rectangle 3.png'),
        SizedBox(height: 5,),
        cartwidget('assests/Rectangle 4.png'),
        SizedBox(height: 5,),
        cartwidget('assests/Rectangle 5.png'),
        SizedBox(height: 5,),
        cartwidget('assests/Rectangle 6.png'),
        SizedBox(height: 5,),
        paynowwidget(),
      ],),
    )
   ); 
  }
}