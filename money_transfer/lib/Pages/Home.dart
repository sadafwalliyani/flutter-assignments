import 'package:flutter/material.dart';
import 'package:money_transfer/Pages/Rewards.dart';

import 'Balance.dart';
import 'Offer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Later"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(               text: "Home",         ),
              Tab(                text: "Balance",              ),
              Tab(                text: "Offer",              ),
              Tab(                text: "Rewards",              ),
            ]),
      ),
      body: TabBarView(controller: _controller, children: [
        Home(),
        Balance(),
        Offer(),
        Rewards(),
      ]),
    );
  }
}
