
import 'package:blue_squad_app/coponnents/static.dart';
import 'package:blue_squad_app/screens/bnb_screen/profile/profile_screen.dart';
import 'package:blue_squad_app/screens/bnb_screen/store/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


import 'cart/cart_screen.dart';
import 'home/home_screen.dart';



class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  var _currentIndex = 0;

   final List<Widget> _pages = [
    HomeScreen(),
    StoreScreen(),
    CartScreen(),
    ProfileScreen(),
    ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: textColor,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.storefront_outlined),
              title: Text("Store"),
              selectedColor:textColor,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              title: Text("Cart"),
              selectedColor:textColor,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],

        ),
      ),




    );
  }
}
