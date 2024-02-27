import 'package:flutter/material.dart';

import '../constants.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key, this.onChanged});

  final ValueChanged<int>? onChanged;

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_sharp),
          ),
          title: Text(
            "Wishlist",
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16,
                color: appthemecolor,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext Context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                            border: Border.all(color: appthemecolor),
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage("lib/images/tyres/tr1.png"),
                              scale: 0.6,
                              //fit: BoxFit.fitHeight,
                            ),
                            color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Apollo ACTIGRIP R",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                              ),
                            ),
                            SizedBox(height: 0.0),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: starcolor,
                                  ),
                                  // SizedBox(width: 1.0),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: starcolor,
                                  ),
                                  // SizedBox(width: 1.0),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: starcolor,
                                  ),
                                  // SizedBox(width: 1.0),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: starcolor,
                                  ),
                                  // SizedBox(width: 1.0),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: starcolor,
                                  ),
                                  // SizedBox(width: 1.0),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                Text(
                                  "Rs. 599",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lato",
                                      fontSize: 20.0),
                                ),
                                SizedBox(width: 7.0),
                                Text(
                                  "Rs. 799",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lato",
                                    fontSize: 20.0,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey,
                                    decorationThickness: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        height: 20,
                        width: screenWidth,
                        child: Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: "Lato",
                            ),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        backgroundColor: appthemecolor,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
