
import 'package:blue_squad_app/coponnents/static.dart';
import 'package:blue_squad_app/items/poduct_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {


  List categores = ["All", "Veg", " Fruit", "Nuts"];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

        Stack(
          children: [
            GridView.builder(
                shrinkWrap: true,
               // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20)
                    .add(EdgeInsets.only(bottom: 30)),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext ctx, index) {
                  return ProductItem();

                }

            ),
            Column(
            children: [
              Container(
                width: double.infinity,
                height: 230.h,
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
                      height: 80.h,
                    ),
                    Text(
                      "Store",
                      style: TextStyle(
                        fontSize: 28.sp,
                        color: buttonTextColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    SizedBox(
                      height: 50.h,
                    ),

                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height:42.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categores.length,
                            itemBuilder: (context , index){
                              return Padding(
                                padding:  EdgeInsets.only(left: 15.w),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: buttonColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:  Text(
                                      "${categores[index]}",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
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
