import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Widgets/widgetoffers.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColorContant.screenColor),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top:10),
            child: Column(
                                     
                     children: [
                      
                 offerWidget(0xff242042, 'assests/image 15.png', "Mobile Recharge Offer",
                  "Use Code FIRST20", "Get 20% Instant cashback upto Rs50 on "),
                 offerWidget(0xff242042, 'assests/image 15.png', "Mobile Recharge Offer", "Use Code FIRST20", "Get 20% Instant cashback upto Rs50 on "),
                
                 offerWidget(0xff242042, 'assests/image 15.png', "Mobile Recharge Offer", "Use Code FIRST20", "Get 20% Instant cashback upto Rs50 on "),
                
                 offerWidget(0xff242042, 'assests/image 15.png', "Mobile Recharge Offer", "Use Code FIRST20", "Get 20% Instant cashback upto Rs50 on "),
                
            offerWidget(0xff242042, 'assests/image 15.png', "Mobile Recharge Offer", "Use Code FIRST20", "Get 20% Instant cashback upto Rs50 on "),
                
            ]),
          ),
        ),
      ),
    );
  }
}
