import 'package:flutter/material.dart';
import 'package:sparebess/views/ourProduct_view.dart';

import '../constants.dart';

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
    // Add more category names as needed
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
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                                scale: 0.7, // Adjust the scale as needed
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
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "What's Hot",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 5.0),
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
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align both to start
                      children: [
                        Image.asset(
                          'lib/images/categories/categories6.png',
                          height: 70.0,
                          width: 75.0,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                            width: 8), // Add spacing between image and text
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
                              ),
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
                                      ),
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
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align both to start
                      children: [
                        Image.asset(
                          'lib/images/categories/categories7.png',
                          height: 60.0,
                          width: 75.0,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                            width: 8), // Add spacing between image and text
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
                              ),
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
                                      ),
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
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Best Seller",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 730,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (itemWidth / itemHeight),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OurProductView()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'lib/images/categories/categories${index + 1}.png',
                          height: 70.0,
                          width: 130.0,
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Bybre Brakes",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "4.8",
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              "(248 Ratings)",
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rs.599",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "Rs.699",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
