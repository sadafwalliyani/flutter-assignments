


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.pink,
        title: Text("TabBar"),
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
      
      // body:  
      // Container(
      //   child: TabBarView(
      //      controller:_controller,
      //     children: [
      //   Home(),
      //   Balance(),
      //   Offer(),
      //   Rewards(),
      //   ]),
      // ),
      );
         }
}
