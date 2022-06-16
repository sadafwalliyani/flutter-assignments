import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget offercontainerWidget(colorr, png, text1, text2, text3) {
 return(
    (Container(
    height: 90,
    width: 300,
    decoration: new BoxDecoration(
      color: Color(colorr),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Row(children: [
      Container(
          height: 90,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  child: Image(
                    image: AssetImage(
                      png,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                ),
                child: Container(
                  child: Image(
                    image: AssetImage(
                      'assests/image 16.png',
                    ),
                  ),
                ),
              ),
            ],
          )),
      Padding(
        padding: EdgeInsets.only(top: 5),
        child: Container(
          height: 90,
          width: 210,
          child: Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    text1,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontFamily: 'Play',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text2,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Play',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        height: 30,
                        width: 110,
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 119, 12, 56),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                              top: 4,
                            ),
                            child: Text(
                              text3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffFA4D96),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 1,
                                fontFamily: 'Play',
                              ),
                            ))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]),
  ))

  );
}
