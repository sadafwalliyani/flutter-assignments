import 'package:flutter/material.dart';
import 'package:login_screen/Constant/app_colors.dart';
import 'package:login_screen/Pages/Notification.dart';
import 'package:login_screen/Pages/Profile.dart';
import 'package:login_screen/Pages/dart.dart';
import 'package:login_screen/Pages/flutter.dart';
import 'package:login_screen/Widgets/searchbarWidget.dart';

class TabBarrr extends StatefulWidget {
  const TabBarrr({Key? key}) : super(key: key);

  @override
  State<TabBarrr> createState() => _TabBarrrState();
}

class _TabBarrrState extends State<TabBarrr>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColorContant.screenColor),
        actions: [
          Padding(
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffffffff),
                  child: IconButton(
                    icon: Image.asset(
                      'assests/Frozen.png',
                    ),
                    iconSize: 22,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profiile()));
                    },
                  )
                  )
                  ),
          Padding(
            padding: EdgeInsets.all(2),
            child: searchbarWidget('searchbar'),
          ),
          Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Color(0xffffffff),
              radius: 30,
              child: Stack(children: [
                CircleAvatar(
                  backgroundColor: Color(0xffffffff),
                  radius: 19,
                  backgroundImage: AssetImage(
                    'assests/Group 880.png',
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notificationss()));
                    },
                    icon: Icon(
                      Icons.abc,
                      color: Color(0xffffffff),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
        bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Dart Assignments",
              ),
              Tab(
                text: "Flutter Assignments",
              ),
            ]),
      flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffffffff),
                      Color(0xff006637),
                      Color(0xff000000),
                    ]),
              ),
            ),),
      body: Container(
        child: TabBarView(controller: _controller, children: [
          dartScreenn(),
          flutterScreen(),
        ]),
      ),
    );
  }
}
