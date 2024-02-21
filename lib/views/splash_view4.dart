import 'package:flutter/material.dart';
import 'package:sparebess/views/login_view.dart';
import 'package:sparebess/views/splash_view1.dart';
import 'package:sparebess/views/splash_view3.dart';

import '../constants.dart';

class SplashViewPage4 extends StatefulWidget {
  SplashViewPage4({super.key});

  @override
  State<SplashViewPage4> createState() => _SplashViewPage4State();
}

class _SplashViewPage4State extends State<SplashViewPage4> {
  @override
  Widget build(BuildContext context) {
    double screenhieght = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
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
                    "lib/images/welcome/splash4.png",
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
                              builder: (context) => SplashViewPage3()),
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
                "Hassle-Free Checkout",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Lato"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
                child: Center(
                  child: Text(
                    "Enjoy a seamless shopping experience with our quick and secure checkout. Add items to your cart, review your order, and complete your purchase in just a few minutes",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontFamily: "Lato"),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Container(
              width: screenwidth,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appthemecolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  shadowColor: Colors.grey,
                  elevation: 8,
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
