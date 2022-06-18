import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Balance.dart';
import 'package:money_transfer/Pages/Home.dart';
import 'package:money_transfer/Pages/Notification.dart';
import 'package:money_transfer/Pages/Profile.dart';

import 'package:money_transfer/Pages/Rewards.dart';
import 'package:money_transfer/Widgets/searchbarWidget.dart';

import 'Offer.dart';

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
      length: 4,
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
                  radius:22,
                   backgroundColor: Color(0xff343645),
                                    child: IconButton(
                        icon: Image.asset('assests/Frozen.png',
                        ),
                         iconSize: 22,
                                  onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profiile()));
                        },
                                    ))),
          Padding(
            padding: EdgeInsets.all(2),
            child: searchbarWidget('searchbar'),
          ),
          Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Color(0xff343645),
              radius: 22,
              child: Stack(children: [
                CircleAvatar(
                  backgroundColor: Color(0xff343645),
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
                      color: Color(0xff343645),
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
                text: "Home",
              ),
              Tab(
                text: "Balance",
              ),
              Tab(
                text: "Offers",
              ),
              Tab(
                text: "Rewards",
              ),
            ]),
      ),
      body: Container(
        child: TabBarView(controller: _controller, children: [
          Home(),
          Balance(),
          Offer(),
          Rewards(),
        ]),
      ),
    );
  }
}
