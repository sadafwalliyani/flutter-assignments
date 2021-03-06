import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Pages/Recieve.dart';
import 'package:money_transfer/Widgets/circleavatarWidget.dart';
import 'package:money_transfer/Widgets/elevetedButtonWidget.dart';
import 'package:money_transfer/Widgets/iconsWidget.dart';
import 'package:money_transfer/Widgets/textWidget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: textWidget('Money Transfer'),
            ),
            SizedBox(
              height: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              elevatedBttonWidget(
                Color(0xff5B2E62),
                "Scan QR Code",
                AssetImage('assests/Scanner.png'),
              ),
              elevatedBttonWidget(
                Color(0xff2E624C),
                "Send to Contact",
                AssetImage('assests/contactuser.png'),
              ),
            ]),
            SizedBox(
              height: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              elevatedBttonWidget(
                Color(0xff5E622E),
                "Send To Bank",
                AssetImage('assests/bank.png'),
              ),
              elevatedBttonWidget(
                Color(0xff622E3A),
                "SelfTransfer",
                AssetImage('assests/Swap.png'),
              ),
            ]),
            SizedBox(
              height: 2,
            ),
            textWidget('Recharge & Bill Payments'),
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              elevatedBttonWidget(
                Color(0xff32652A),
                "MobileRecharge",
                AssetImage('assests/Iphone.png'),
              ),
              elevatedBttonWidget(
                Color(0xff652A5F),
                "Electricity Bill",
                AssetImage('assests/Light Mode.png'),
              ),
            ]),
            SizedBox(
              height: 2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    elevatedBttonWidget(
                      Color(0xff652A2A),
                      "DTHRecharge",
                      AssetImage('assests/Play.png'),
                    ),
                    elevatedBttonWidget(
                      Color(0xff2A4065),
                      "Postpaid bill",
                      AssetImage('assests/receipt-minus.png'),
                    ),
                  ]),
            ),
            SizedBox(
              height: 2,
            ),
            textWidget('Ticket Booking'),
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              iconbuttonWidget(
                AssetImage('assests/video-play.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/bus.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/bus-1.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/airplane.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/smart-car-1.png'),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            textWidget('More Services'),
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              iconbuttonWidget(
                AssetImage('assests/frame.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/group.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/Heart.png'),
              ),
              iconbuttonWidget(
                AssetImage('assests/smart-car.png'),
              ),
            ]),
            SizedBox(
              height: 2,
            ),
            Row(children: [
              textWidget('Recent Transactions'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Recieve()));
                  },
                  child: Text("Recieve Money",
                  maxLines: 1,
                      style: TextStyle(
                          fontFamily: 'Play',
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff652A5F),
                      fixedSize: Size(110, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),)
            ]),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    circleavatarWidget('assests/image1.jpg'),
                    circleavatarWidget('assests/dp 3.jpg'),
                    circleavatarWidget('assests/image 9.jpg'),
                    circleavatarWidget('assests/image 11.jpg'),
                    circleavatarWidget('assests/image 4.jpg'),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
