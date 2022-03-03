import 'dart:developer';


import 'package:blue_squad_app/models/all_product.dart';
import 'package:blue_squad_app/network/dio_helper.dart';
import 'package:blue_squad_app/network/end_point.dart';
import 'package:blue_squad_app/screens/bnb_screen/store/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);


  AllProduct?  shopHomeModel;

  void getHomeData() {
    emit(ShopGetHomeLoadingState());
    DioHelper.getData(
      url: STORE,
       token: TOKEN

    ).then((value) {
      print(value.data.toString());

      shopHomeModel = AllProduct.fromJson(value.data);
      print('this modellllllllllllllll${shopHomeModel!.products![0].name}');


      emit(ShopGetHomeSuccessState(shopHomeModel!));
    }).catchError((error) {
      print(error.toString());
      emit(ShopGetHomeErrorState());
    });
  }

}
