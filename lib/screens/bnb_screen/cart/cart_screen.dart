
import 'package:blue_squad_app/coponnents/static.dart';
import 'package:blue_squad_app/items/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class CartScreen extends StatefulWidget {

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Stack(
        children: [





          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CartItem(),
                  );
                }
            ),
          ),

          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: const Offset(0, 10),
                        blurRadius: 5.0,
                        spreadRadius: 0),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        fontSize: 28.sp,
                        color: buttonTextColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),





                  ],
                ),
              ),



            ],

          ),



        ],
      ),
    );
  }
}
























/*
Container(

          child: Column(
            children: [
              svgImage("apple"),
              SizedBox(height: 20,),
              Text("Apple" ,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),


              Container(
                width: 85.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Color(0xffD4E1EE),
                  borderRadius: BorderRadius.circular(15.r),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(

                        child: svgImage("minus" , size: 12.r)),
                    Text("3" ,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey,
                      ),
                    ),
                    svgImage("add" , size: 12.r),

                  ],
                ),
              ),
            ],
          ),
        ),
 */