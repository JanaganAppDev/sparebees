import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparebess/views/splash_view2.dart';

class SplashViewPage1 extends StatefulWidget {
  SplashViewPage1({Key? key}) : super(key: key);

  @override
  _SplashViewPage1State createState() => _SplashViewPage1State();
}

class _SplashViewPage1State extends State<SplashViewPage1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.to(SplashViewPage2());
      /*Navigator.push(
          context, MaterialPageRoute(builder: (context) => SplashViewPage2()));*/
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Color(0xffAE0000),
        ),
        child: Center(
          child: Image.asset(
            "lib/images/welcome/splash1.png",
            scale: 1.7,
          ),
        ),
      ),
    );
  }
}
