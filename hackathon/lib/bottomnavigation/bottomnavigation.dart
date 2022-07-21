// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:practiceoftest/bottomnavigation/cart.dart';
// import 'package:practiceoftest/bottomnavigation/home.dart';
// import 'package:practiceoftest/bottomnavigation/setting.dart';
// import 'package:practiceoftest/bottomnavigation/shopping.dart';



// class BottomComtroller extends StatefulWidget {
//   const BottomComtroller({Key? key}) : super(key: key);

//   @override
//   State<BottomComtroller> createState() => _BottomComtrollerState();
// }

// class _BottomComtrollerState extends State<BottomComtroller> {
//   final pages = [Home(), Shopping(), Setting(), cart(),];
//   var _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 5,
//         selectedItemColor: Color.fromRGBO(254, 37, 80, 1),
//         backgroundColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _currentIndex,
//         selectedLabelStyle:
//             TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Settings",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add),
//             label: "Add",
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//             print(_currentIndex);
//           });
//         },
//       ),
//     );
//   }
// }