import 'package:flutter/cupertino.dart';

Widget containerWidget(colorr,text1,text2,text3) {
  return (Container(
    height: 99,
    width: 130,
    child: Padding(
      padding: EdgeInsets.all(12),
      child:Column(
        children: [
        Text(text1,
        textAlign: TextAlign.center,
                  
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontFamily: 'Play',
                      ),      
        ),
        SizedBox(height: 5,),
        Text(text2,
        textAlign: TextAlign.center,
                  
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 13,
                        
                        fontFamily: 'Play',
                      ),      
        ),
        SizedBox(height: 5,),
        Text(text3,
        textAlign: TextAlign.center,
                  
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                         fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 1,
                        fontFamily: 'Play',
                      ),      
        ),
        ],
      ),
    ),
    decoration: new BoxDecoration(
      color: Color(colorr),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    
    ),
  ));
}
