import 'package:blue_squad_app/models/all_product.dart';
import 'package:blue_squad_app/screens/bnb_screen/store/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';
class Detail_Product extends StatelessWidget {
final AllProduct model ;
final index  ;

   Detail_Product( this.model, this.index);
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        appBar: AppBar(

          centerTitle: true,
          elevation: 0,
          title: Text('Broccoli',style: TextStyle(fontSize: 20,color: Color(0xff748A9D)),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(image: NetworkImage("${model.products![index].image}",
                ), height: 150,
                  width: 150,),
                buildSizedBoxCustomer(30),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF0F4F8),
                  ),
                  width: 315,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(

                      children: [
                        Expanded(child: Text('Broccoli',)),
                        Expanded(child: Text('2 heads',)),
                        Expanded(child: Text('0.80 €',)),

                        Expanded(child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_downward)))

                      ],

                    ),
                  ),
                ),
                buildSizedBoxCustomer(30),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                  ),

                  width: 450,
                  height: 60,
                  child: ClipRRect(

                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),

                      color: Colors.green,
                      onPressed:(){} ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.white,),
                          SizedBox(width: 12,),
                          Text(
                            'ADD TO CART',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                buildSizedBoxCustomer(30),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildContainerGreenText('Description'),

                    Divider(),
                    buildSizedBoxCustomer(10),

                    buildContainerBlackText('${model.products![index].description}'),
                    buildSizedBoxCustomer(30),

                    buildContainerGreenText('Origin'),
                    buildSizedBoxCustomer(10),

                    buildContainerBlackText('${model.products![index].description}'),
                    buildSizedBoxCustomer(30),

                    buildContainerGreenText('Preparation & Usage'),
                    buildSizedBoxCustomer(10),

                    buildContainerBlackText('${model.products![index].usage}'),
                    buildSizedBoxCustomer(30),

                    buildContainerGreenText('Nutritional Information'),
                    buildSizedBoxCustomer(10),
                    Container(
                      child:
                      Column(

                        children: [

                          Row(
                            children: [
                              buildContainerBlackText('Serving Size'),
                              Spacer(),
                              buildContainerBlackText('${model.products![index].naturalInfo!.size}'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),
                          Row(
                            children: [
                              buildContainerBlackText('Calories'),
                              Spacer(),
                              buildContainerBlackText('${model.products![index].naturalInfo!.calories}'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),

                          Row(
                            children: [
                              buildContainerBlackText('Protein'),
                              Spacer(),
                              buildContainerBlackText('${model.products![index].naturalInfo!.protien}'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),

                          Row(
                            children: [
                              buildContainerBlackText('Sugar'),
                              Spacer(),
                              buildContainerBlackText('${model.products![index].naturalInfo!.sugar}'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),

                          Row(
                            children: [
                              buildContainerBlackText('Fiber'),
                              Spacer(),
                              buildContainerBlackText('${model.products![index].naturalInfo!.fibre}'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),

                          Row(
                            children: [
                              buildContainerBlackText('text6'),
                              Spacer(),
                              buildContainerBlackText('number6'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),

                          Row(
                            children: [
                              buildContainerBlackText('text7'),
                              Spacer(),
                              buildContainerBlackText('number7'),


                            ],
                          ),
                          buildSizedBoxCustomer(12),

                          Row(
                            children: [
                              buildContainerBlackText('text8'),
                              Spacer(),
                              buildContainerBlackText('number8'),


                            ],
                          ),

                        ],

                      ),
                    )


                  ],
                ),

              ],

            ),

          ),
        ),
      );

  }

  SizedBox buildSizedBoxCustomer(double height) => SizedBox(height: height,);

  Container buildContainerGreenText(text) {
    return Container(
        padding: EdgeInsets.only(right: 30,left: 30),
        child: Text(text,style: TextStyle(color: Color(0xff7BED8D),fontSize: 25,letterSpacing:3),textAlign: TextAlign.start,));
  }
  Container buildContainerBlackText(text) {
    return Container(
        padding: EdgeInsets.only(right: 30,left: 30),
        child: Text(text,style: TextStyle(color: Color(0xff748A9D),fontSize: 16,letterSpacing: 2),textAlign: TextAlign.start,));
  }

}
