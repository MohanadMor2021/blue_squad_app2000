import 'dart:developer';


import 'package:blue_squad_app/coponnents/global_componnets.dart';
import 'package:blue_squad_app/coponnents/static.dart';
import 'package:blue_squad_app/network/end_point.dart';
import 'package:blue_squad_app/screens/bnb_screen/main_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();



  // fetchApiLogin({startLoading, stopLoading, btnState}) async {
  //   final isValid = _formKey.currentState.validate();
  //   FocusScope.of(context).unfocus();
  //   if (isValid) {
  //     _formKey.currentState.save();
  //     try {
  //       startLoading();
  //       Response response = await getResponse(userLogin, data: {
  //         //'device_type': 'android',
  //         // 'fcm_token': 'android',
  //         'username': email.text,
  //         'device_name': "postman",
  //         'password': password.text,
  //       });
  //       var res = BaseResponse.fromJson(
  //         response.data,
  //         keyObject: 'user',
  //         fun: (Map<String, dynamic> json) {
  //           return User.fromJson(json);
  //         },
  //       );
  //       setUser(res.object as User);
  //       User owner = getUser();
  //       if (res.status) {
  //         ToAndFinish(context, MainScreen());
  //         // CustomNavigate<HomeNotifier>().navigateAndFinish(
  //         //     context, HomeScreen(),
  //         //     create: (context) => HomeNotifier());
  //         stopLoading();
  //       } else {
  //         showDialogWithMessage(context, res.message);
  //       }
  //     } catch (error) {
  //       stopLoading();
  //       print(error);
  //       showDialogWithMessage(context, error.message);
  //     }
  //   }
  // }



  Future<void> LogIn() async {
    // try {


    // } catch (e) {
    //   print(e);
    //   Helpers.showMessage(AppShared.appLang['SomethingWentWrong'],
    //       MessageType.MESSAGE_FAILED);
    // }
  }





  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            TOKEN=state.userModel.user!.token!;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
            );
          }
        },
        builder: (context, state) {
          return  Scaffold(
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
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: textColor,
                                ),
                              ),
                              SizedBox(
                                height: 100.h,
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
                                "SIGN IN",
                                    ()  {
                                      ShopLoginCubit.get(context).userLogin(email: email.text,password: password.text);


                                },
                              ),


                              // CustomBtnComponent(
                              //     text: 'sign_in',
                              //     onTap: (startLoading, stopLoading, btnState) {
                              //       fetchApiLogin(startLoading: startLoading, stopLoading: stopLoading, btnState: btnState);
                              //     }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    myTextButton(
                      " Create Account",
                          () {
                     //   ToAndFinish(context, RegisterScreen());
                      },
                    ),
                  ],
                ),
              )
          );
        },
      ),
    );
  }
}
