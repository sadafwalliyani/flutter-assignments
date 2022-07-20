import 'package:flutter/material.dart';
import 'package:practiceoftest/Pages/Tabbar.dart';
import 'package:practiceoftest/bottomnavigation/cart.dart';
import 'package:practiceoftest/bottomnavigation/setting.dart';


class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  int currentTab = 0;
  Widget currentScreen = const TabBarrr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs Example'),
      ),
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        // notchMargin: 50,
        color: Colors.white,
        
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = const TabBarrr();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home,
                        color: currentTab == 0 ? Colors.white : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Home1();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.favorite,
                        color: currentTab == 1 ? Colors.white : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = const cart();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.search,
                        color: currentTab == 2 ? Colors.white : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Setting();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person,
                        color: currentTab == 3 ? Colors.white : Colors.black)),
              ]),
        ),
      ),
    );
  }
}