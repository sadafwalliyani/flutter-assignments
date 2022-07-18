import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/Widgets/buttons.dart';
import 'package:practiceoftest/Widgets/screen1text.dart';
import 'package:practiceoftest/screens/screen2.dart';
import 'package:practiceoftest/screens/screen3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              
                  image: DecorationImage(fit: BoxFit.cover,
                    
                image: AssetImage(
                  'assests/screen.png',
                  
                  
                ),
              )),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: Image.asset(
                        'assests/Vector.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 90,
                    ),
                    child: Container(
                      // height: 330,
                      // width: 270,
                      child: screen1textwidget("1"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Colors.transparent,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen2()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              fixedSize: Size(290, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                ]),
              ),
            )));
  }
}
