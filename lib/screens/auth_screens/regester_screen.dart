
import 'package:blue_squad_app/coponnents/global_componnets.dart';
import 'package:blue_squad_app/coponnents/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login.dart';





class RegisterScreen extends StatefulWidget {

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  TextEditingController email = TextEditingController()..text = '';
  TextEditingController name = TextEditingController()..text = '';
  TextEditingController password = TextEditingController()..text = '';

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
                boxShadow:  [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(0,10),
                      blurRadius: 5.0,
                      spreadRadius: 0
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 140.h,
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      defaultTextForm(
                        name,
                        "Full Name",
                        icon: svgImage("user", size: 21),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),


                      defaultTextForm(
                        email,
                        "Email",
                        icon: svgImage("email", size: 21),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      defaultTextForm(
                        password,
                        "password",
                        icon: svgImage("password", size: 21),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      myTextButton(
                        "Forgot password?",
                            () {},
                        size: 14.sp,
                      ),
                      SizedBox(
                        height: 115.h,
                      ),
                      myButton(
                        "CREATE ACCOUNT",
                            () {
                          ToAndFinish(context, LoginScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            myTextButton(
              "Sign In",
                  () {
                ToAndFinish(context, LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
