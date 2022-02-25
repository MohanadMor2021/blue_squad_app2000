import 'package:flutter/material.dart';




class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
       Center(
        child: Container(
          width: 200,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffdbe2ed),
          ),
          child: Column(
            children: [
              const SizedBox  (height: 10),

              Image.asset(
                "assets/images/broccoli.png",
                height: 150,
                width: 150,
              ),

              // const SizedBox  (height: 20),


              const Text("Broccoli" ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff748a9d),
                ),
              ),


              const Text("£0.80" ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8BAAC6),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.add_shopping_cart_outlined , color: Colors.grey,),
                    Icon(Icons.favorite , color: Colors.red,),

                  ],
                ),
              ),
            ],


          ),
        ),

    );
  }
}
