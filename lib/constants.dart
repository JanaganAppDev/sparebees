import 'package:flutter/material.dart';
import 'dart:ui';

/* App theme,background colors */
Color appthemecolor = Color(0xffAE0000);
Color backGColor = Color(0xffFFFFFF);
Color iconColor = Color(0xffA8AAB0);
Color searchbarcolor = Color(0xffF9E7EF);
Color starcolor = Color(0xffF4B400);

/* App Text Colors */
Color textDecColor = Color(0xffAAAAAA);
Color textfontColor = Color(0xff0E0B0B);

class AppConstants {
  // static const TextStyle titleTextStyle = TextStyle(
  //  fontSize: 24.0,
  //  fontWeight: FontWeight.bold,
  //  color: Colors.black,
  // );
  //
  // static const TextStyle subtitleTextStyle = TextStyle(
  //  fontSize: 18.0,
  //  fontWeight: FontWeight.normal,
  //  color: Colors.grey,
  // );

  static TextStyle headingTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: appthemecolor,
    fontFamily: 'Roboto',
  );

  static TextStyle bodyTextStyle = TextStyle(
    fontSize: 16.0,
    color: appthemecolor,
    fontFamily: 'Lato',
  );
}
