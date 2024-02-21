import 'package:flutter/material.dart';
import 'package:sparebess/constants.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/categoriesbar.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/profile_view.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({super.key});

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int currentIndex = 0;

  List<String> navigationbarlist = [
    "Home",
    "Categories",
    "Account",
    "Cart",
  ];

  getNavigationbarItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Homeview();
      case 1:
        return CatergoriesBar();
      case 2:
        return Profileview();
      case 3:
        return CartViewPage();
      default:
        return Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.red),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: backGColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                activeIcon: Icon(Icons.home_outlined, color: appthemecolor),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                label: 'Categories',
                icon: Image.asset(
                  'lib/images/icon/categories.png',
                  height: 25.0,
                  width: 25.0,
                  color: Colors.black,
                ),
                activeIcon: Image.asset(
                  'lib/images/icon/categories.png',
                  height: 25.0,
                  width: 25.0,
                  color: appthemecolor,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.person_2_outlined, color: Colors.black),
                activeIcon: Icon(Icons.person_2_outlined, color: appthemecolor),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                activeIcon:
                    Icon(Icons.shopping_cart_outlined, color: appthemecolor),
              ),
            ],
            currentIndex: currentIndex,
            selectedItemColor: appthemecolor,
            unselectedItemColor: Colors.black,
            selectedFontSize: 12.0, // Set the font size for the selected tab
            showSelectedLabels: true,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            elevation: 5,
          ),
        ),
      ),
      body: getNavigationbarItemWidget(currentIndex),
    );
  }
}
