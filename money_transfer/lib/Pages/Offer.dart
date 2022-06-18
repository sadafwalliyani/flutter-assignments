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
            padding: EdgeInsets.only(top: 10),
            child: Column(children: [
              offerWidget(
                  0xff242042,
                  'assests/image 15.png',
                  "Mobile Recharge Offer",
                  "Use Code FIRST20",
                  "Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply"),
              SizedBox(height: 5),
              offerWidget(
                  0xff3B2042,
                  'assests/image 19.png',
                  "Mobile Recharge Offer",
                  "Use Code FIRSDTHT20",
                  "Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply"),
              SizedBox(height: 5),
              offerWidget(
                  0xff422028,
                  'assests/image 13.png',
                  "Flipcart Shopping Offer",
                  "Use Code FIRST20",
                  "Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply"),
              SizedBox(height: 5),
              offerWidget(
                  0xff242042,
                  'assests/image 670.png',
                  "Money Transfer Offer",
                  "Use Code FIRST20",
                  "Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply"),
              SizedBox(height: 5),
              offerWidget(
                  0xff3B2042,
                  'assests/image 12.png',
                  "Rs 50 Off on Flights",
                  "Use Code FIRST20",
                  "Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply"),
              SizedBox(height: 5),
            ]),
          ),
        ),
      ),
    );
  }
}
