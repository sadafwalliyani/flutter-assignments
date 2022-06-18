import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Home.dart';
import 'package:money_transfer/Pages/Tabbar.dart';
import 'package:money_transfer/Widgets/textWidget.dart';

class Recieve extends StatefulWidget {
  const Recieve({Key? key}) : super(key: key);

  @override
  State<Recieve> createState() => _RecieveState();
}

class _RecieveState extends State<Recieve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top:20,
          ),
          child: Column(          
            children: [
              Container(
                child:Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Recieve Money",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                            fontFamily: 'Play',
                          ),
                        ),IconButton(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TabBarrr()));     

                        }, icon: Icon(Icons.close_rounded,
                        color: Color(0xffFfffff),
                      ))
                      ],
                    ),
                  )),
              
             
              Container(
                height:295,
                width: 289,
                color: Color(0xff1F222A),
              child: Image(
                          image: AssetImage(
                            'assests/image100.png',
                          ),)  
              ),
              SizedBox(height: 10,),
              textWidget("Other Options"),
        
               Container(
                  height: 40,
                  width: 300,
                  decoration: new BoxDecoration(
                    color: Color(0xff343645),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Your Pay ID",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            fontFamily: 'Play',
                          ),
                        ),
                         Text(
                          "xyz@524899652",
                          style: TextStyle(
                            color: Color(0xffB0BEC5),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                            fontFamily: 'Play',
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            'assests/copy.png',
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 10,),
              Container(
                  height: 40,
                  width: 300,
                  decoration: new BoxDecoration(
                    color: Color(0xff343645),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Show bank account details",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                            fontFamily: 'Play',
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            'assests/Vector.png',
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
