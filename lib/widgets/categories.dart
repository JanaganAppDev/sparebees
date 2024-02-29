import 'package:flutter/material.dart';
import 'package:sparebess/views/ourProduct_view.dart';

import '../constants.dart';
import '../views/constant_gridview.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final PageController pageController = PageController();
  final List<String> imgList = [
    'lib/images/sider_img1.png',
    'lib/images/sliderimg2.png',
    'lib/images/sliderimg3.png',
    // Add more image paths as needed
  ];
  final List<String> categoryNames = [
    "Tyers",
    "Battery",
    "Suspension",
    "Plugs",
    "Engine Oil",
    "Air Filter",
    "Brakes",
    "Chain Sprockets",
    "Clutch Components",
    "Lights",
    "Accessories",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 310) / 2;
    final double itemWidth = size.width / 2;
    double screenhieght = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0, bottom: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Categories",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 110,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: appthemecolor,
                                width: 2.0,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.transparent,
                              child: Transform.scale(
                                scale: 0.7,
                                child: Image.asset(
                                  'lib/images/categories/categories${index + 1}.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          categoryNames[index],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Lato"),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "What's Hot",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "  PREMIUM AIR\n  FILTERS",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            fontFamily: "Lato"),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/images/categories/categories6.png',
                          height: 70.0,
                          width: 75.0,
                          alignment: Alignment.center,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Align to start
                          children: [
                            Text(
                              "20 %",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lato"),
                            ),
                            Container(
                              height: 30,
                              width: 83,
                              margin:
                                  EdgeInsets.only(top: 4), // Adjust top margin
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Shop Now",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6.0,
                                          fontFamily: "Lato"),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "  PREMIUM AIR\n  FILTERS",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            fontFamily: "Lato"),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/images/categories/categories7.png',
                          height: 60.0,
                          width: 75.0,
                          alignment: Alignment.center,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Align to start
                          children: [
                            Text(
                              "50 %",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lato"),
                            ),
                            Container(
                              height: 30,
                              width: 83,
                              margin:
                                  EdgeInsets.only(top: 4), // Adjust top margin
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Shop Now",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6.0,
                                          fontFamily: "Lato"),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Best Seller",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"),
            ),
          ),
        ),
        Container(
          height: 730,
          child: ConstantGridView(),
        ),
      ],
    );
  }
}
