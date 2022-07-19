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
  //       final controller = TextEditingController();

  // void _fetchUserData() async {
  //   // do something
  //   setState(() {
  //     controller.text = "Search";
  //   });
  // }
  
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
        backgroundColor: Color.fromARGB(255, 207, 205, 205),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                width: 320,
                child: TextField(
                  // controller: controller,
         
                  // scrollPadding: ,

                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 223, 215, 215),
                        fontFamily: 'Play',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        wordSpacing: 0.3,
                      ),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assests/avatar.png'),
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
        bottom: TabBar(
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
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {

//   @override
//   State createState() {
//     return _MyHomePage();
//   }

// }

// class _MyHomePage extends State{
//   int _selectedIndexForBottomNavigationBar = 0;
//   int _selectedIndexForTabBar = 0;


//   //1
//   static List _listOfIconsForBottomNavigationBar = [
//     Icon(Icons.directions_car),
//     Icon(Icons.directions_walk),
//     Icon(Icons.directions_bike),
//      Icon(Icons.directions_bike),
//   ];


//   //2
//   static List _listOfIconsForTabBar = [
//     Icon(Icons.directions_boat),
//     Icon(Icons.directions_bus),
//     Icon(Icons.directions_railway),
//      Icon(Icons.directions_railway),
//   ];


//   //3
//   void _onItemTappedForBottomNavigationBar(int index) {
//     setState(() {
//       _selectedIndexForBottomNavigationBar = index;
//       _selectedIndexForTabBar = 0;
//     });
//   }


//   //4
//   void _onItemTappedForTabBar(int index) {
//     setState(() {
//       _selectedIndexForTabBar = index+1;
//       _selectedIndexForBottomNavigationBar = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {


//     //5
//     final tabBar = new TabBar(labelColor: Colors.blue,
//       onTap: _onItemTappedForTabBar,
//       tabs: [
//         new Tab(
//           text: "BOAT",
//         ),
//         new Tab(
//           text: "BUS",
//         ),
//         new Tab(
//           text: "RAILWAY",
//         ),
//          new Tab(
//           text: "RAILWAY",
//         ),
//       ],
//     );



//     //6
//     return new DefaultTabController(length: 4, child: new Scaffold(
//       appBar: AppBar(bottom: tabBar,backgroundColor: Colors.white, title: Text('Tabs Demo')),

//       //7
//       body: Center(child:_selectedIndexForTabBar == 0 ?
//       _listOfIconsForBottomNavigationBar.elementAt(_selectedIndexForBottomNavigationBar):
//       _listOfIconsForTabBar.elementAt(_selectedIndexForTabBar - 1)),

//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         onTap: _onItemTappedForBottomNavigationBar, // this will be set when a new tab is tapped
//         items: [
//           BottomNavigationBarItem(
//               icon: new Icon(Icons.home_max_outlined),),
//           BottomNavigationBarItem(
//               icon: new Icon(Icons.directions_walk),label:'WALK'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.directions_bike),label:'BIKE'),
//                 BottomNavigationBarItem(
//               icon: Icon(Icons.directions_bike),label:'BIKE'),

//         ],
//         currentIndex: _selectedIndexForBottomNavigationBar,
//       ),
//     ));
//   }

// }
