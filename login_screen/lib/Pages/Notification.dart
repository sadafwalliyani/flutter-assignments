import 'package:flutter/material.dart';
import 'package:login_screen/Pages/Tabbar.dart';
import 'package:login_screen/Widgets/textnotiwidget.dart';

class Notificationss extends StatefulWidget {
  const Notificationss({Key? key}) : super(key: key);

  @override
  State<Notificationss> createState() => _NotificationssState();
}

class _NotificationssState extends State<Notificationss> {
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
      )
      ),
    child:Padding(
      padding: const EdgeInsets.only(top:25),
      child: Column(children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [Text(
                          " Notifications",
                          style: TextStyle(
                            color: Color(0xff006637),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontFamily: 'Arima',
                          ),
                        ),
         
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TabBarrr()));
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            color: Color(0xff006637),
                          ))
      ,],),
                    Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textnotiWidget('Hackathon', 'Pending.','July 17  - 09:00 am'),
                  SizedBox(height: 10,),
         
                  textnotiWidget('Assignment-1', 'Completed.','June 20  - 12:32 Pm'),
                  SizedBox(height: 10,),
                  textnotiWidget('Assignment-2', 'Completed.','June 20  - 12:32 Pm'),
                  SizedBox(height: 10,),
                 textnotiWidget('Assignment-3', 'Completed.','June 20  - 12:32 Pm'),
 SizedBox(height: 10,),
                 textnotiWidget('Assignment-4', 'Completed.','June 20  - 12:32 Pm'),
 SizedBox(height: 10,),
                 textnotiWidget('Assignment-5', 'Completed.','June 20  - 12:32 Pm'),

                ],
              ),
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
            ],
          ),
        ),
      ),

      ),
    );
  }
}
