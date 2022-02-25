import 'package:bloc/bloc.dart';
import 'package:blue_squad_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'network/MyBlocObserver.dart';
import 'network/dio_helper.dart';



void main () {
  Bloc.observer = MyBlocObserver();

  DioHelper.init();

  runApp(MyApp());
}



class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (){
        return MaterialApp(
          home:
          //  TestScreen(),

          SplashScreen(),
        );
      },

    );
  }
}
