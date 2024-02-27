import 'package:flutter/material.dart';

import '../constants.dart';
import 'navigation_view.dart';

class CheckOutView extends StatefulWidget {
  CheckOutView({super.key, this.onChanged});

  final ValueChanged<int>? onChanged;

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  bool favoriteColor = false;
  int _selectedQuantity = 1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomBarNavigation()));
          },
        ),
        title: Text(
          "Checkout",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              color: appthemecolor,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  Text(
                    "Sparebees",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      fontFamily: "Lato",
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "101, Aj Street, Puducherry - 605005\n6374224165",
                    style: TextStyle(fontFamily: "Lato", fontSize: 12),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Your Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        fontFamily: "Lato",
                        color: appthemecolor),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 140,
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
                            SizedBox(height: 10.0),
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
                            SizedBox(height: 10.0),
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
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            Container(
                              height: 30.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                  border: Border.all(color: appthemecolor),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Qty",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                  DropdownButton<int>(
                                    value: _selectedQuantity,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedQuantity = value!;
                                        if (widget.onChanged != null) {
                                          widget.onChanged!(_selectedQuantity);
                                        }
                                      });
                                    },
                                    items: List.generate(
                                            10, (index) => index + 1)
                                        .map((value) => DropdownMenuItem<int>(
                                              value: value,
                                              child: Text(value.toString()),
                                            ))
                                        .toList(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text(
                          "Order Summary",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: "Lato",
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price (1 Item)",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              "₹ 599",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 12),
                            ),
                            Text(
                              "₹ 0",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Charges",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 12),
                            ),
                            Text(
                              "₹ 0",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Amount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  fontFamily: "Lato"),
                            ),
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
                                SizedBox(width: 10.0),
                                Text(
                                  "Rs. 799",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lato",
                                      fontSize: 20.0,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: screenWidth,
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: "Lato"),
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
    );
  }
}
