import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CarouselSliderDemo extends StatefulWidget {
  const CarouselSliderDemo({super.key});

  @override
  State<CarouselSliderDemo> createState() => _CarouselSliderDemoState();
}

class _CarouselSliderDemoState extends State<CarouselSliderDemo> {
  final List<String> imgList = [
    'http://localhost:5000/pf003-1708403311910-568939381.jpg',
    'http://localhost:5000/pf002-1708403156462-648590609.jpg',
    'http://localhost:5000/pf001-1708344546665-5820791.jpg',
  ];

  final CarouselController controller = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
          child: Container(
            height: 52,
            width: screenWidth,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                hintText: "Search",
                filled: true,
                fillColor: Color(0xFFEBEBEB),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appthemecolor,
                  ),
                  child: Icon(
                    Icons.search,
                    color: backGColor,
                    size: 35.0,
                  ),
                ),
                hintStyle: TextStyle(color: Colors.grey[600]),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Color(0xFFEBEBEB),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Color(0xFFEBEBEB),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 150.0,
          child: CarouselSlider(
            carouselController: controller,
            options: CarouselOptions(
              viewportFraction: 1.0,
              //disableCenter: true,
              //animateToClosest: true,
              //padEnds: false,
              //disableCenter: true,
              enlargeCenterPage: true,
              height: 130.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              initialPage: currentIndex,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: imgList.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent,
                      ),
                      child: Image.network(
                        imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imgList.length,
            (index) => Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index ? appthemecolor : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
