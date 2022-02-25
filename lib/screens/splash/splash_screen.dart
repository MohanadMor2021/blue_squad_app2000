import 'dart:async';


import 'package:blue_squad_app/coponnents/global_componnets.dart';
import 'package:blue_squad_app/screens/auth_screens/login.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {






  @override
  void initState() {
    super.initState();

    Timer(
        Duration(
          milliseconds: 3000,
        ), () {
      ToAndFinish(context, LoginScreen());
    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: svgImage("logo"),
        ),
      ),
    );
  }
}
