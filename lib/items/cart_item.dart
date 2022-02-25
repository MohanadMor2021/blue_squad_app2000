import 'package:blue_squad_app/coponnents/global_componnets.dart';
import 'package:flutter/material.dart';





class CartItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffdbe2ed),
        ),
        child: Row(
          children: [
            //broccoli
            Image.asset(
              "assets/images/pepper.png",
              height: 90,
              width: 100,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Red Peppers",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff748a9d),
                  ),
                ),
                Text(
                  "price for 1 Kg :  £0.80",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8BAAC6),
                  ),
                ),
              ],
            ),

            SizedBox(
              width: 20,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffC2D6E8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(0, 5),
                            blurRadius: 5.0,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: svgImage(
                        "minus",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),


                    const Text(
                      "20.5 Kg",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8BAAC6),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffC2D6E8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(0, 5),
                            blurRadius: 5.0,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: svgImage("add"),
                    ),


                  ],
                ),
                const Text(
                  "total: £000.80",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8BAAC6),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
