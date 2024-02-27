import 'package:flutter/material.dart';
import 'package:sparebess/constants.dart';
import 'package:sparebess/views/welcome_screens/splash_view1.dart';
import 'package:sparebess/views/welcome_screens/splash_view3.dart';

class SplashViewPage2 extends StatefulWidget {
  SplashViewPage2({super.key});

  @override
  State<SplashViewPage2> createState() => _SplashViewPage2State();
}

class _SplashViewPage2State extends State<SplashViewPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 500.0,
                decoration: BoxDecoration(
                  color: Color(0xffAE0000),
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(250.0),
                    bottomStart: Radius.circular(250.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "lib/images/welcome/splash2.png",
                    scale: 2.0,
                  ),
                ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_sharp),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashViewPage1()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Welcome to SpareBees",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Lato"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
                child: Center(
                  child: Text(
                    "Explore a vast inventory of high-quality spare parts for your vehicles and appliances. Find exactly what you need with ease",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontFamily: "Lato"),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey, fontFamily: "Lato"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SplashViewPage3()),
                    );
                  },
                  child: Text(
                    "Go",
                    style: TextStyle(color: appthemecolor, fontFamily: "Lato"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
