import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/login_screens/login_view.dart';
import 'package:sparebess/views/navigation_view.dart';
import 'package:sparebess/views/login_screens/otp_view.dart';
import 'package:sparebess/views/login_screens/register_view.dart';
import 'package:sparebess/views/welcome_screens/splash_view1.dart';
import 'package:sparebess/views/welcome_screens/splash_view2.dart';

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
