import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Widgets/elevetedButtonWidget.dart';
import 'package:money_transfer/Widgets/iconsWidget.dart';
import 'package:money_transfer/Widgets/textWidget.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
     body: 
            
      SingleChildScrollView(
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
          elevatedBttonWidget(Color(0xff5B2E62), "Scan QR Code", Icons.qr_code_scanner_rounded),
          elevatedBttonWidget(Color(0xff2E624C), "Send to Contact", Icons.contact_mail_outlined,)
         
            ]),
            SizedBox(
              height: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
           elevatedBttonWidget(Color(0xff5E622E), "Send To Bank", Icons.comment_bank),
          elevatedBttonWidget(Color(0xff622E3A), "SelfTransfer", Icons.qr_code_scanner_rounded)
         
            ]),
            SizedBox(
              height: 2,
            ),
            textWidget('Recharge & Bill Payments'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            elevatedBttonWidget(Color(0xff32652A), "MobileRecharge", Icons.qr_code_scanner_rounded),
          elevatedBttonWidget(Color(0xff652A5F), "Electricity Bill", Icons.qr_code_scanner_rounded)
         
            ]),
            SizedBox(
              height: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
             elevatedBttonWidget(Color(0xff652A2A), "DTH Recharge", Icons.qr_code_scanner_rounded),
          elevatedBttonWidget(Color(0xff2A4065), "Postpaid bill", Icons.qr_code_scanner_rounded)
         
            ]),
            SizedBox(
              height: 2,
            ),
            textWidget('Ticket Booking'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
            ]),
            SizedBox(
              height: 2,
            ),
            textWidget('More Services'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
             elevatedBttonWidget(Color(0xff), "Scan QR Code", Icons.qr_code_scanner_rounded),
          elevatedBttonWidget(Color(0xff), "Scan QR Code", Icons.qr_code_scanner_rounded)
         
            ]),
            SizedBox(
              height: 2,
            ),
            textWidget('Recent Transactions'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
              iconsWidget((Icons.movie)),
            ]),
          ],
        ),
      ),
    
      
      
    );
  }
}