import 'package:class7/Widgets/textfieldWidget.dart';
import 'package:flutter/material.dart';

class registration extends StatefulWidget {
  // const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Color(0xff006637),
            title: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Registration Open",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffffffff),
                      Color(0xff006637),
                      Color(0xff000000),
                    ]),
              ),
            ),
          ),
        ),
        body: Center(
          child: Expanded(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
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
                    )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                            height: 160,
                            width: 160,
                            child: Image(
                              image: AssetImage(
                                'assests/jp.png',
                              ),
                            )),
                          SizedBox(height:10,),
                       Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                          decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                   wordSpacing: 0.3,
                                ),
                                hintText: "Write Your E-mail ",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff006637),
                                ),
                                fillColor: Colors.white70),
                          ),
                        ),
                                               SizedBox(height:10,),

                       Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                          decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                   wordSpacing: 0.3,
                                ),
                                hintText:"Passwor",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff006637),
                                ),
                                fillColor: Colors.white70),
                          ),
                        ),
                          SizedBox(height:10,),
                        RaisedButton(
                          onPressed: () async {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff006637),
                                    Color(0xff000000)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 200, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Register",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
