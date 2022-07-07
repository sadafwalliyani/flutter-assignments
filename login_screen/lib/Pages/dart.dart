import 'package:flutter/material.dart';
import 'package:login_screen/Pages/Tabbar.dart';
import 'package:login_screen/Widgets/textnotiwidget.dart';

class dartScreenn extends StatelessWidget {
  const dartScreenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                                        Container(
                        child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Recent Notifications",
                            style: TextStyle(
                              color: Color(0xff006637),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontFamily: 'Arima',
                            ),
                          ),
                          IconButton(
                            icon: Image.asset('assests/image-44.png'),
                            iconSize: 20,
                            onPressed: () {},
                          )
                        ],
                      ),
                    )),

                    textnotiWidget(
                        'Lecture-1', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),

                    textnotiWidget(
                        'Assignment-1', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),
                    textnotiWidget(
                        'Lecture-2', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),

                    textnotiWidget(
                        'Assignment-2', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),
                    textnotiWidget(
                        'Lecture-3', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),

                    textnotiWidget(
                        'Assignment-3', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),
                    textnotiWidget(
                        'Lecture-4', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),

                    textnotiWidget(
                        'Assignment-4', 'Completed.', 'June 20  - 12:32 Pm'),
                    SizedBox( height: 5,),
                    textnotiWidget(
                        'Lecture-5', 'Completed.', 'June 20  - 12:32 Pm'),
                    textnotiWidget(
                        'Assignment-5', 'Completed.', 'June 20  - 12:32 Pm'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
