import 'package:flutter/material.dart';
import 'package:money_transfer/Constant/app_colors.dart';
import 'package:money_transfer/Widgets/circleavatarWidget.dart';
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
          elevatedBttonWidget(Color(0xff5B2E62), "Scan QR Code",  AssetImage('assests/bus-1.png'),),
          elevatedBttonWidget(Color(0xff2E624C), "Send to Contact",  AssetImage('assests/bus-1.png'),),         
            ]),
            SizedBox(
              height: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              elevatedBttonWidget(Color(0xff5E622E), "Send To Bank",  AssetImage('assests/bus-1.png'),),
          
          elevatedBttonWidget(Color(0xff622E3A), "SelfTransfer",  AssetImage('assests/bus-1.png'),), 
            ]),
            SizedBox(
              height: 2,
            ),
            textWidget('Recharge & Bill Payments'),
            SizedBox(height: 5,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            elevatedBttonWidget(Color(0xff32652A), "MobileRecharge",  AssetImage('assests/bus-1.png'),),
          elevatedBttonWidget(Color(0xff652A5F), "Electricity Bill",  AssetImage('assests/bus-1.png'),),         
            ]),
            SizedBox(
              height: 2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
               elevatedBttonWidget(Color(0xff652A2A), "DTH Recharge",  AssetImage('assests/bus-1.png'),),
                      elevatedBttonWidget(Color(0xff2A4065), "Postpaid bill",  AssetImage('assests/bus-1.png'),),         
              ]),
            ),
            SizedBox(
              height: 2,
            ),
            textWidget('Ticket Booking'),
            SizedBox(height: 5,),
           SingleChildScrollView(
             child: Column(
               children:[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                   iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                        iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                        iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                        iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                        iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                        
                  ]),
                ),
           
               ] 
             ),
           ),
            SizedBox(
              height: 5,
            ),
            textWidget('More Services'),
            SizedBox(height: 5,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
               iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                    iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                    iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                    iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                    iconbuttonWidget(AssetImage('assests/bus-1.png'),),
                    
              ]),),
            SizedBox(
              height: 2,
            ),
            textWidget('Recent Transactions'),
            SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CircleAvatar(
                radius: 35,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:                       
                AssetImage('assests/image1.jpg'),)
              )

              
              ]),
            ),
            SizedBox(height: 5,),
          ],
        ),
      ),
    
      
      
    );
  }
}