import 'package:flutter/material.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/profile_view.dart';

import '../constants.dart';

class CatergoriesBar extends StatefulWidget {
  const CatergoriesBar({Key? key}) : super(key: key);

  @override
  State<CatergoriesBar> createState() => _CatergoriesBarState();
}

class _CatergoriesBarState extends State<CatergoriesBar> {
  int selectedIndex = 1; // Set the appropriate index for Categories page

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
    // Add more category names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('All Categories', style: TextStyle(color: appthemecolor)),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10,
          ),
          itemCount: categoryNames.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 59,
                    //width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Transform.scale(
                        scale: 0.6,
                        child: Image.asset(
                          'lib/images/categories/categories${index + 1}.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    categoryNames[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
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
