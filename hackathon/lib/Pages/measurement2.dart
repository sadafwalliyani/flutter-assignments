import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/graytxtwiget.dart';
import 'package:practiceoftest/Widgets/meacontainer.dart';
import 'package:practiceoftest/Widgets/pinkbutton.dart';
import 'package:practiceoftest/Widgets/paynowbutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class measurement extends StatefulWidget {
  const measurement({Key? key}) : super(key: key);

  @override
  State<measurement> createState() => _measurementState();
}

class _measurementState extends State<measurement> {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 350,
            child: SingleChildScrollView(
              child: Column(children: [
                Image(
                  image: AssetImage(
                    'assests/screen4.png',
                  ),
                  height: 400,
                  width: 500,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  axisDirection: Axis.horizontal,

                  // effect: WormEffect(), // your preferred effect
                  // onDotClicked: (index) {}

                  effect: JumpingDotEffect(
                    activeDotColor: Colors.pink,

                    dotColor: Colors.deepPurple.shade100,

                    dotHeight: 10,

                    dotWidth: 10,

                    spacing: 16,

                    //verticalOffset: 50,

                    jumpScale: 3,
                  ),
                ),
                Text(
                  "Perfect Situation Purple Long Sleeve Dress",
                  style: GoogleFonts.raleway(
                    color: Color.fromARGB(255, 65, 61, 65),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "\$25.99",
                      style: GoogleFonts.raleway(
                        color: Colors.pink,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    graytxt("INFO"),
                    Text(
                      "MEASUREMENTS",
                      style: GoogleFonts.raleway(
                        color: Color.fromARGB(255, 37, 36, 37),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        graytxt("WAIST"),
                        SizedBox(
                          height: 5,
                        ),
                        meacontainer("24"),
                      ],
                    ),
                    Column(
                      children: [
                        graytxt("LENGTH"),
                        SizedBox(
                          height: 5,
                        ),
                        meacontainer("34"),
                      ],
                    ),
                    Column(
                      children: [
                        graytxt("BREATH"),
                        SizedBox(
                          height: 5,
                        ),
                        meacontainer("76"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    pinkbtn("Yes", 100),
                    SizedBox(
                      width: 70,
                    ),
                    graytxt("No"),
                  ],
                ),

                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'assests/group2.png',
                      ),
                      height: 100,
                      width: 300,
                    ),
                    graytxt("Do you want to use this material"),
                  ],
                ),
                //   SizedBox(
                //   height: 8,
                // ),

                pinkbtn("Add to Bag", 200),
              ]),
            )),
      ),
    );
  }
}
