import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: Center(
        child: Container(
          height: 380,
          width: 300,
          decoration: new BoxDecoration(
            color: Color(0xff1F222A),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: AssetImage(
                    'assests/setting-4.png',
                  )),
                  Text(
                    "Portfolio Value",
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Play',
                      fontSize: 14,
                      color: Colors.white,
                      wordSpacing: 2,
                      letterSpacing: 2,
                    ),
                  ),
                  Image(
                      image: AssetImage(
                    'assests/frame.png',
                  )),
                  
                ],
              ),
            ),
            
          ),  

                          
         ),
      ),
    );
  }
}
