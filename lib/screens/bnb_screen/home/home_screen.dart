import 'package:blue_squad_app/coponnents/static.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imgList = [
    "Broccoli",
    "Strawberry",
    "Red Pepper",
  ];

  final List _carouselImages = [
    'assets/images/slider_1.jpg',
    'assets/images/slider_2.jpg',
    'assets/images/slider_3.jpg',
  ];

  Widget sliderItem(
    int index,
  ) =>
      Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Image.asset(
            _carouselImages[index],
            scale: 0.5.r,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            imgList[index],
            style: TextStyle(
              fontSize: 23.sp,
              color: buttonTextColor,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Text(
            "Store",
            style: TextStyle(
              fontSize: 23.sp,
              color: buttonTextColor,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(0, 10),
                    blurRadius: 5.0,
                    spreadRadius: 0),
              ],
            ),
            child: Carousel(
              //  boxFit: BoxFit.fill,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: const Duration(milliseconds: 1000),

              showIndicator: false,
              images: [
                sliderItem(0),
                sliderItem(1),
                sliderItem(2),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: ScrollPhysics().parent,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 180.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFA700),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Image.asset(
                          "assets/images/orange.png",
                        ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Citrus",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 180.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFA700),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/orange.png",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Citrus",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 180.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFA700),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/orange.png",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Citrus",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//  ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: 3,
//             itemBuilder: (context , index){
//               return Container(
//                 alignment: Alignment.center,
//                 height: 150.h,
//                 width: 100.w,
//                 decoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: svgImage("orange"),
//               );
//             },
//           ),
