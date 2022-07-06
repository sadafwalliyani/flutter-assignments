import 'package:flutter/material.dart';

class dartScreenn extends StatelessWidget {
  const dartScreenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 128, 190, 241),
          Colors.white,
          Color(0xff006637),
        ],
      )
      ),
    child: Column(children: [
      
    ],),)
    )
    );
  }
}
