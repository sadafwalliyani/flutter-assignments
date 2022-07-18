import 'package:flutter/material.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

class children extends StatelessWidget {
  const children({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        Row(children: [
         CircleAvatar(
                 radius: 35,
             backgroundImage: AssetImage( 'assests/oval 7.png'),),
              Text("Sandy Williams"),
              Image(image: AssetImage('assests/Vector3.png'))
        ],)
      ],),
            bottomNavigationBar: BottomComtroller(),

    );
  }
}
