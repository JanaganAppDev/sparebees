import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/categoriesbar.dart';
import 'package:sparebess/views/profile_view.dart';
import '../constants.dart';
import '../widgets/brands.dart';
import '../widgets/carouselslider.dart';
import '../widgets/categories.dart';

class Homeview extends StatefulWidget {
  Homeview({Key? key}) : super(key: key);

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final List<String> imgList = [
    'lib/images/sider_img1.png',
    'lib/images/sliderimg2.png',
    'lib/images/sliderimg3.png',
    // Add more image paths as needed
  ];

  List<String> navigationbarlist = [
    "Home",
    "Categories",
    "Account",
    "Cart",
  ];

  final CarouselController controller = CarouselController();
  //int currentIndex = 0;
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
    double screenWidth = MediaQuery.of(context).size.width;

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
                    style: AppConstants.headingTextStyle,
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
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              const CarouselSliderDemo(),
              const Categories(),
              const SizedBox(
                height: 10,
              ),
              BrandsView(),
            ],
          ),
        ),
      ),
    );
  }
}
