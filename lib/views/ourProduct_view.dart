import 'package:flutter/material.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/product_detail_view.dart';

import '../constants.dart';
import 'navigation_view.dart';

class OurProductView extends StatefulWidget {
  const OurProductView({super.key});

  @override
  State<OurProductView> createState() => _OurProductViewState();
}

class _OurProductViewState extends State<OurProductView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 310) / 2;
    final double itemWidth = size.width / 2;
    double screenhieght = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backGColor,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomBarNavigation()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Our Products",
          style: AppConstants.headingTextStyle,
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
          margin: EdgeInsets.all(6),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                child: Container(
                  height: 52,
                  width: screenWidth,
                  child: TextFormField(
                    decoration: InputDecoration(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Tyres",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lato"),
                  ),
                ),
              ),
              Container(
                height: 1000,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemCount: 8, // Set the number of items to 6
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailsView()),
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
                                    fontFamily: "Lato"),
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
                                        fontFamily: "Lato"),
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
                                        fontFamily: "Lato"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rs.599",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                        fontFamily: "Lato"),
                                  ),
                                  Text(
                                    "Rs.699",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.grey,
                                        decorationThickness: 1.0,
                                        fontFamily: "Lato"),
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
          ),
        ),
      ),
    );
  }
}
