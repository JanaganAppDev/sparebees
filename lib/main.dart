import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/login_view.dart';
import 'package:sparebess/views/navigation_view.dart';
import 'package:sparebess/views/otp_view.dart';
import 'package:sparebess/views/register_view.dart';
import 'package:sparebess/views/splash_view1.dart';
import 'package:sparebess/views/splash_view2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashViewPage1(),
    );
  }
}
