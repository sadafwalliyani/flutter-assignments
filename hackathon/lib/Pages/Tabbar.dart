import 'package:flutter/material.dart';
import 'package:practiceoftest/Pages/children.dart';
import 'package:practiceoftest/Pages/men.dart';
import 'package:practiceoftest/Pages/women.dart';
import 'package:practiceoftest/Widgets/searchbarWidget.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

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
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.grey,
        
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: searchbarWidget('searchbar'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: CircleAvatar(
                 radius: 35,
             backgroundImage: AssetImage( 'assests/avatar.png'),
                child: IconButton(
                  icon: Icon(Icons.circle),
                 iconSize: 1,
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => profiile()));
                  },
                )),
          ),
        ],
        bottom: 
        TabBar( 
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Men",
              ),
              Tab(
                text: "Children",
              ),
            ]),
      ),
      body: Container(
        child: TabBarView(controller: _controller, children: [
          women(),
          men(),
          children(),
        ]),
      ),

    );
  }
}
