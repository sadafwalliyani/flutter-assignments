import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Widgets/containersWidget.dart';

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
            
            child:      
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
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
                        fontSize: 20,
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
                        SizedBox(height:3,),                    
                     Text("\$54,375",     
                    textAlign: TextAlign.center,                
                      style: TextStyle(
                        fontFamily: 'RussoOne',
                        fontSize: 36,
                        color: Color(0xffB0BEC5),
                        wordSpacing: 2,
                        letterSpacing: 2,),
                    ),
                      SizedBox(height: 5,),
                    Text("In 3 Account",     
                    textAlign: TextAlign.center,                
                      style: TextStyle(
                        fontFamily: 'Play',
                        fontSize: 16,
                        color: Colors.white,
                        wordSpacing: 2,
                        letterSpacing: 2,),
                    )
                  ],
                  
                ),
                SizedBox(height: 10,),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                    containerWidget(0xff652A5F,"Federel Bank", "1142524899652","16,456.05"),
                                    containerWidget(0xff442A65, "States Bank", "1142524899652","2045.05"),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(        
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,              
                      children: [
        containerWidget(0xff2A6550, "Best Bank","1142521547852", "35873.5"),
        Container(
              height: 99,
    width: 140,
    
    child:
    
    Align
    (
      alignment: Alignment.bottomRight,
      child: Image(image: AssetImage('assests/Vector.png',),))),                        
                      ],
                    )

                  ],
                ),
               
                            SizedBox(
                  height: 5,
                ),
                Container(
                  height: 40,
                  width: 280,
                  decoration: new BoxDecoration(
                    color: Color(0xff343645),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Add / Manage Accounts ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Play',
                        fontSize: 16,
                        color: Colors.white,
                        wordSpacing: 2,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
