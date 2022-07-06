import 'package:flutter/material.dart';
import 'package:login_screen/Pages/Tabbar.dart';
import 'package:login_screen/Widgets/notificationWidget.dart';
import 'package:login_screen/Widgets/profilebuttonsWidget.dart';

class profiile extends StatefulWidget {
  const profiile({Key? key}) : super(key: key);

  @override
  State<profiile> createState() => _profiileState();
}

class _profiileState extends State<profiile> {
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
      )),
    )));
  }
}

