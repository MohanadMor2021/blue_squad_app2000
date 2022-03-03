

import 'package:blue_squad_app/models/userdata.dart';
import 'package:blue_squad_app/network/dio_helper.dart';
import 'package:blue_squad_app/network/end_point.dart';
import 'package:blue_squad_app/screens/auth_screens/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLoginCubit extends Cubit<LoginStates> {
  ShopLoginCubit() : super(LoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

   userdata? userModel;

  
  void userLogin({
     String? email,
     String? password,
  }) {
    emit(LoginLoadingState());

    DioHelper.postData(
      url: LOGIN,
      data: {
        'username': email,
        'device_name':'postman',

    'password': password
      },
    ).then((value) {
      userModel = userdata.fromJson(value.data);
  print(value.data.toString());
      // if(userModel.status=true)
      // {
      //   print(userModel.status);
      //   print(userModel.message);
      //   print(userModel.user!.name);
      //   print(userModel.user!.token);
      //
      //   CacheHelper.putData(key: 'userToken', value: userModel.user!.token);

        emit(LoginSuccessState(userModel!));
      // } else
      //   {
      //     print(userModel.status);
      //     print(userModel.message);
      //     emit(LoginSuccessState());
      //   }
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
      print(error.toString());
    });
  }
}