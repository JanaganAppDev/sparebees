import 'package:flutter/material.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/profile_view.dart';

import '../constants.dart';
import '../widgets/brands.dart';
import 'navigation_view.dart';

class CatergoriesBar extends StatefulWidget {
  const CatergoriesBar({Key? key}) : super(key: key);

  @override
  State<CatergoriesBar> createState() => _CatergoriesBarState();
}

class _CatergoriesBarState extends State<CatergoriesBar> {
  int selectedIndex = 1;

  final List<String> categoryNames = [
    "Tyers",
    "Battery",
    "Suspension",
    "Plugs",
    "Engine Oil",
    "Air Filter",
    "Brakes",
    "Chain ",
    "Clutch ",
    "Lights",
    "Accessories",
    "Plug"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomBarNavigation()));
          },
        ),
        centerTitle: true,
        title: Text(
          'All Categories',
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            color: appthemecolor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 10,
          ),
          itemCount: categoryNames.length,
          itemBuilder: (context, index) {
            return Container(
              //height: 90,
              decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    //width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Bordercolor,
                          blurRadius: 2,
                          spreadRadius: 0.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70,
                      child: Transform.scale(
                        scale: 0.7,
                        child: Image.asset(
                          'lib/images/categories/categories${index + 1}.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    categoryNames[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Lato",
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
