import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/categories_view.dart';
import 'package:sparebess/views/profile_view.dart';
import '../constants.dart';
import '../widgets/brands.dart';
import '../widgets/carouselslider.dart';
import '../widgets/categories.dart';
import "package:http/http.dart" as http;

class Homeview extends StatefulWidget {
  Homeview({Key? key}) : super(key: key);

  @override
  State<Homeview> createState() => _HomeviewState();
}

List data = [];

class _HomeviewState extends State<Homeview> {
  Future<void> fetchData() async {
    final url = Uri.parse('http://localhost:5000/category/fetch_category');
    final response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("auth");
      final jsonResponse = jsonDecode(response.body);
      data = jsonResponse;
    } else {
      print("not match");
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  final List<String> imgList = [
    'lib/images/sider_img1.png',
    'lib/images/sliderimg2.png',
    'lib/images/sliderimg3.png',
  ];

  List<String> navigationbarlist = [
    "Home",
    "Categories",
    "Account",
    "Cart",
  ];

  final CarouselController controller = CarouselController();

  int _currentIndex = 0;
  int selectedIndex = 0;
  getNavigationbarItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Homeview();
      case 1:
        return CatergoriesBar();
      case 2:
        return Profileview();
      case 3:
        return CartViewPage();
      default:
        return Text("Error");
    }
  }

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 250) / 2;
    final double itemWidth = size.width / 2;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backGColor,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("lib/images/circleavatar.png"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    "Hi, Sparebees",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 16,
                        color: appthemecolor,
                        fontWeight: FontWeight.w600),
                    // TextStyle(
                    //     fontSize: 18,
                    //     color: Colors.red[800],
                    //     fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border_outlined, color: iconColor),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              CarouselSliderDemo(),
              Categories(),
              BrandsView(),
            ],
          ),
        ),
      ),
    );
  }
}
