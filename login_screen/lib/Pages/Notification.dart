import 'package:flutter/material.dart';
import 'package:login_screen/Constant/app_colors.dart';
import 'package:login_screen/Pages/Tabbar.dart';
import 'package:login_screen/Widgets/textnotiwidget.dart';


class Notificationss extends StatefulWidget {
  const Notificationss({Key? key}) : super(key: key);

  @override
  State<Notificationss> createState() => _NotificationssState();
}

class _NotificationssState extends State<Notificationss> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 128, 190, 241),
                Colors.white,
                Color(0xff006637),
              ],
            )),))
    //   backgroundColor: Color(AppColorContant.screenColor),
    //   body: Padding(
    //     padding: EdgeInsets.only(
    //       top: 20,
    //     ),
    //     child: SingleChildScrollView(
    //       child: Column(            
    //         children: [
    //           Container(
                
    //               child: Padding(
    //             padding: EdgeInsets.all(10),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   " Notifications",
    //                   style: TextStyle(
    //                     color: Color(0xffFFFFFF),
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.w300,
    //                     letterSpacing: 1,
    //                     fontFamily: 'Play',
    //                   ),
    //                 ),
    //                 IconButton(
    //                     onPressed: () {
    //                       Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (context) => TabBarrr()));
    //                     },
    //                     icon: Icon(
    //                       Icons.close_rounded,
    //                       color: Color(0xffFfffff),
    //                     ))
    //               ],
    //             ),
    //           )),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               textnotiWidget('Recharge Completed', 'Your last recharge on 9847229989 of 199 rs has been succesfully completed.', 
    //               'May 20  - 12:32 Pm'),
    //               SizedBox(height: 10,),
    //               textnotiWidget('Money Recived', 'Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.', 
    //               'May 20  - 12:45 Pm'),   SizedBox(height: 10,),
    //               textnotiWidget('Offer Unlocked', 'You have an unlockd offer avilable go to offer section or tap to view the offer.', 
    //               'May 20  - 2:45 Pm'),   SizedBox(height: 10,),
    //             ],
    //           ),
    //           Container(
    //               child: Padding(
    //             padding: EdgeInsets.all(10),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   " Recent Notifications",
    //                   style: TextStyle(
    //                     color: Color(0xffFFFFFF),
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.w300,
    //                     letterSpacing: 1,
    //                     fontFamily: 'Play',
    //                   ),
    //                 ),
    //                 IconButton(
    //                   icon: Image.asset('assests/image-44.png'),
    //                   iconSize: 20,
    //                   onPressed: () {},
    //                 )
    //               ],
    //             ),
    //           )),
    //         ],
    //       ),
    //     ),
    //   ),
    );
  }
}
