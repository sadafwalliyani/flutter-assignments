import 'package:flutter/material.dart';
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
        actions: [
     Padding(
      padding:EdgeInsets.only(top: 5),
    
       child: CircleAvatar(
           radius:35,
                             child:
                              IconButton(
                 icon: Image.asset('assests/sadaf.jpg',
                 ),
                  iconSize: 35,
                           onPressed: () {
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => profiile()));
                 },
                             )),
     ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: searchbarWidget('searchbar'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: CircleAvatar(
             backgroundColor: Colors.white,
              radius: 35,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Notificationss()));
                },
                icon: Icon(
                  Icons.notifications,
                  color:Color(0xff006637),
                ),
              ),
            ),
          ),
        ],

      flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffffffff),
                      Color(0xff006637),
                      Color(0xff000000),
                    ]
                    ),
              ),
            ),
                bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Dart",
              ),
              Tab(
                text: "Flutter",
              ),
             
            ]),
      ),
            
      body: Container(
        child: TabBarView(controller: _controller, children: [
          dartScreenn(),
          flutterScreen(),
        ]),
      ),
    );
  }
}
