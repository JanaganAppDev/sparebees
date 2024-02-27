import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../constants.dart';

class RewardsPageView extends StatefulWidget {
  const RewardsPageView({super.key});

  @override
  State<RewardsPageView> createState() => _RewardsPageViewState();
}

class _RewardsPageViewState extends State<RewardsPageView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Rewards",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              color: appthemecolor,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  height: 160,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: appthemecolor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lato",
                            ),
                          ),
                          Text(
                            "Your Points",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Lato",
                                fontSize: 11),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(
                              FontAwesome5.award,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "700 Points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontFamily: "Lato",
                            ),
                          ),
                          Container(
                            height: 35.0,
                            width: screenWidth,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Center(
                              child: Text(
                                "Latest Update : 5 Feb 2024",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 80.0,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Transform.rotate(
                      angle: 43.5,
                      child: Icon(
                        CupertinoIcons.gift_fill,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Points History",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: "Lato",
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    height: 100,
                    width: screenWidth,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today, 04:32 PM",
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                              Text(
                                "#TR6484",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Payment #TR6484",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: "Lato",
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellowAccent,
                                  ),
                                  Text(
                                    "+85",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Lato",
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
