import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/AppButtonsConstant.dart';
import 'package:money_transfer/Pages/Rewards.dart';
import 'package:money_transfer/Widgets/elevetedButtonWidget.dart';
import 'package:money_transfer/Widgets/buttonsWidget.dart';
import 'package:money_transfer/Widgets/searchbarWidget.dart';
import 'package:money_transfer/Widgets/textfieldWidget.dart';
import '../Constant/app_colors.dart';
import 'Balance.dart';
import 'Offer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
      backgroundColor: Color(AppColorContant.screenColor),
      appBar: AppBar(
        backgroundColor: Color(AppColorContant.screenColor),
        //      Gradient(colors: LinearGradient([Color(0xff1F222A),Color(0xff1F222A)])),

        actions: [
          Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(2), child: searchbarWidget('searchbar')),
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
                text: "Offer",
              ),
              Tab(
                text: "Rewards",
              ),
            ]),
      ),
      body: Column(
        children:[ Text("Money Transfer",
        style:TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            fontFamily: 'Play',
                          ),
                          ),
      SizedBox(height:2,),
      Container(
        child:elevatedBttonWidget('elevatedbttonwidget'),
      ),

      ],),   
                                      
                        
      
    );
  }
}
