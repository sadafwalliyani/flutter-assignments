import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/Widgets/screen1text.dart';
import 'package:practiceoftest/login.dart';
import 'package:practiceoftest/registration.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
          image: AssetImage(
            'assests/screen44.png',
          ),
        )),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top:15,left: 250),
                    child: Image.asset(
                      'assests/screen4.png',
                      height: 300,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 90,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      color: Colors.transparent,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registration()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            
                              fixedSize: Size(290, 45),

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                 ),
                                 ),
                                 
                          child: Text(
                            "Continue with SignUp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                          )),
SizedBox(height: 10,),
Text("By clicking this button you agree to our",
style:
            TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),
                  ),
            Text("terms of service and privacy policy",
            style:
            TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),

            )
                ]),
              ),
            )));
  }
}
