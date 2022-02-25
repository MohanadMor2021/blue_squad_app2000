import 'package:blue_squad_app/coponnents/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fluttertoast/fluttertoast.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget myTextButton(String title,  fun ,{double? size})  =>

    InkWell(
      onTap: fun,
      child: Text(title,
        style: TextStyle(
          fontSize: size == null ? 18.sp : size.sp ,
          color: buttonTextColor,

        ),
      ),
    );

Widget svgImage(
    icon, {
      Color? color,
      double? size,
      double? width,
    }) =>
    SvgPicture.asset(
      'assets/images/$icon.svg',
      color: color,
      height: size,
      width: width ?? size,
    );


Future To(BuildContext context, Widget widget) async {
  return await Navigator.of(context)
      .push(MaterialPageRoute(builder: (BuildContext context) => widget));
}


Future ToAndFinish(BuildContext context, Widget widget) async {
  return Navigator.pushAndRemoveUntil<dynamic>(
    context,
    MaterialPageRoute<dynamic>(builder: (BuildContext context) => widget),
        (route) => false, //if you want to disable back feature set to false
  );
}


TextStyle defaultTextStyleHint() =>
    TextStyle(fontSize: 15.sp,
      color: buttonTextColor,
      fontWeight:FontWeight.w600,

    );




//
// Future<bool> myToast(String message, Color color) {
//   return Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: color??Colors.black38,
//     textColor: Colors.white,
//     fontSize: 16.0,
//   );
// }







Widget myButton(String title ,  fun) =>
           //
    InkWell(
      onTap: fun,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

Widget defaultTextForm(
    TextEditingController controller,
    String hint,
    {
      Widget? icon,
      bool isPassword = false,
      //Function validator,
      String? defaultValidator,
      TextInputType type = TextInputType.text,
      ValueKey? key,
      Widget? prefixIcon,
    }) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
         color: Color(0xffE7EDF6),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
          border: InputBorder.none,
          hintText: hint,
          prefix: prefixIcon,
          hintStyle: defaultTextStyleHint(),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon ?? Container(),
              SizedBox(
                width: 15.w,
              )
            ],
          ),
          //icon:icon ,
          prefixIconConstraints:
          BoxConstraints(minWidth: 30.w, minHeight: 20.w),
        ),
        // validator: validator
        //     ??
        //         (str) {
        //       return defaultValidator;
        //     },
        keyboardType: type,

        validator: (value){
          if(value!.isEmpty){
            return
                "this field is required ";
          }  else{
            return null;
          }
        },
      ),
    );



