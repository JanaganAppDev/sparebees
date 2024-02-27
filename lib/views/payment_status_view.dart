import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparebess/views/welcome_screens/splash_view2.dart';

class PaymentStatusView extends StatefulWidget {
  PaymentStatusView({Key? key}) : super(key: key);

  @override
  _PaymentStatusViewState createState() => _PaymentStatusViewState();
}

class _PaymentStatusViewState extends State<PaymentStatusView> {
  /*@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.to(SplashViewPage2());
    });
  }*/

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            "lib/images/paymentImg/paymentstatus.png",
            scale: 1.7,
          ),
        ),
      ),
    );
  }
}
