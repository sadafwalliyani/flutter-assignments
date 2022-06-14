import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Balance.dart';
import 'package:money_transfer/Pages/Home.dart';

import 'package:money_transfer/Pages/Rewards.dart';
import 'package:money_transfer/Widgets/searchbarWidget.dart';

import 'Offer.dart';

class TabBarrr extends StatefulWidget {
  const TabBarrr({ Key? key }) : super(key: key);

  @override
  State<TabBarrr> createState() => _TabBarrrState();
}

class _TabBarrrState extends State<TabBarrr>with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColorContant.screenColor),
        actions: [
          Padding(
            padding: EdgeInsets.all(2),
            child: 
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assests/frozen.jpg'),
              ),
            ),
                  ),
          Padding(padding: EdgeInsets.all(2),
          child: searchbarWidget('searchbar'),),
                Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey,
                           child: Icon(Icons.notifications_active_rounded),
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
      
      body:  
      Container(
        child: TabBarView(
           controller:_controller,
          children: [
        Home(),
        Balance(),
        Offer(),
        Rewards(),
        ]),
      ),
      );
         }
}
