    import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget offercontainerWidget(colorr,text1,text2,text3) {
  return (Column(
      children: [
        Row(children: [
// Container(
//   height: 90,
//   child:Image(image: AssetImage('assests/Vector-3.png',),)),
   Container(    
    height: 90,
    width:300,
    child: 
    Padding(
      padding: EdgeInsets.only(
        top: 8,
      ),
      child:Column(
        children: [
        Text(text1,
        textAlign: TextAlign.center,
                  
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
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
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Play',
                      ),      
        ),
        SizedBox(height: 5,),
        Container(
          height: 30,
          width: 110,
                    decoration: new BoxDecoration(
      color: Color.fromARGB(255, 104, 1, 44),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    
    ),

          child:Padding(
            padding: EdgeInsets.only(
              top: 4,
            ),
            child: Text(text3,
                  textAlign: TextAlign.center,
                    
                        style: TextStyle(
                          color: Color(0xffFA4D96),
                           fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 1,
                          fontFamily: 'Play',
                        ),      
                  ),
          ),
        )
        
        ],
      ),
    ),
    decoration: new BoxDecoration(
      color: Color(colorr),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    
    ),
    )],

    
    
   
  ),   
      ]    
   
  )
  );
}
