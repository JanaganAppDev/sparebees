import 'package:flutter/material.dart';
import 'package:sparebess/views/splash_view1.dart';
import 'package:sparebess/views/splash_view2.dart';
import 'package:sparebess/views/splash_view4.dart';

class SplashViewPage3 extends StatefulWidget {
  SplashViewPage3({super.key});

  @override
  State<SplashViewPage3> createState() => _SplashViewPage3State();
}

class _SplashViewPage3State extends State<SplashViewPage3> {
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
                    "lib/images/welcome/splash3.png",
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
                              builder: (context) => SplashViewPage2()),
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
                "Seamless Navigation",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Lato"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
                child: Center(
                  child: Text(
                    "Our user-friendly interface makes it effortless to search and navigate through our extensive catalog. Browse by category, brand, or simple use our powerful search feature.",
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
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SplashViewPage4()),
                    );
                  },
                  child: Text(
                    "Go",
                    style: TextStyle(color: Color(0xffAE0000)),
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
