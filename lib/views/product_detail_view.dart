import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sparebess/views/ourProduct_view.dart';
import '../constants.dart';
import 'navigation_view.dart';

class ProductDetailsView extends StatefulWidget {
  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  bool favoriteColor = false;
  double starRating = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 300) / 2;
    final double itemWidth = size.width / 2;
    double screenhieght = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OurProductView()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                favoriteColor = !favoriteColor;
              });
            },
            icon: Icon(favoriteColor ? Icons.favorite : Icons.favorite_border),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.red),
          ),
        ),
        height: 70.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rs.599",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                "Rs.799",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Container(
                width: 140.0,
                height: 35.0,
                child: ElevatedButton(
                  onPressed: () {
                    /*if (_formKey.currentState!.validate()) {
                      upgrade(
                        referralidController.text.toString(),
                      );
                      */ /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()));*/ /*
                    } else {
                      print("failed");
                    }*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffAE0000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("lib/images/tyres/tr1.png"),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apollo ACTIGRIP R",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.share_outlined))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text("4.8"),
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        "(284 ratings)",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Rs. 500",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "Rs. 799",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                      "Disc brakes, a vital automotive safety component, utilize friction between brake pads and a rotating disc to swiftly and effectively halt vehicle motion, offering superior stopping power and heat dissipation."),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Description",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Tubeless Rear Tyre"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Item Weight: 5000 kg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Home installation available on selected products and selected cities."),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Share with:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 55,
                        width: 285,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Container(
                                    /*decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: appthemecolor,
                                        width: 2.0,
                                      ),
                                    ),*/
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.transparent,
                                      child: Transform.scale(
                                        scale: 0.7,
                                        child: Image.asset(
                                          'lib/images/share/share${index + 1}.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      /*CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),
                      // SizedBox(width: 5.0),
                      CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),
                      // SizedBox(width: 5.0),
                      CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),
                      // SizedBox(width: 5.0),
                      CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),
                      // SizedBox(width: 5.0),
                      CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),
                      // SizedBox(width: 5.0),
                      CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),
                      // SizedBox(width: 5.0),
                      CircleAvatar(
                        minRadius: 15.0,
                        backgroundImage: AssetImage("lib/assets/img_1.png"),
                      ),*/
                    ],
                  ),
                ),
                Container(
                  height: 470,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: (itemWidth / itemHeight),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemCount: 4, // Set the number of items to 6
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Customer Ratings",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: starRating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25.0,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(
                            () {
                              starRating = rating;
                            },
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 10.0),
                        child: Text("(284 Ratings)"),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Customer Reviews",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                      "Customers like the cornering, stability, appearance, quality and value of the vehicle tire. They mention that it has a great design, it's awesome and that it provides good grip on the road. Some are also happy with the fit, and grip."),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffD5F9D5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff006E39),
                                ),
                                SizedBox(width: 5.0),
                                Text("Quality"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD5F9D5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff006E39),
                                ),
                                SizedBox(width: 5.0),
                                Text("Grip"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD5F9D5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff006E39),
                                ),
                                SizedBox(width: 5.0),
                                Text("Value"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD5F9D5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff006E39),
                                ),
                                SizedBox(width: 5.0),
                                Text("Fit"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD5F9D5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff006E39),
                                ),
                                SizedBox(width: 5.0),
                                Text("Design"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD5F9D5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff006E39),
                                ),
                                SizedBox(width: 5.0),
                                Text("Cornering"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.perm_identity_outlined,
                          size: 25,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Sri",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: starRating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25.0,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            setState(
                              () {
                                starRating = rating;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "Uniqueness of steel sadial tyre",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text("Reviewed on January 30.01.2024"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Great design"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Great looks"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 30.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: appthemecolor,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Helpful",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.perm_identity_outlined,
                            size: 25,
                          ),
                          SizedBox(width: 6),
                          Text(
                            "Sri",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: starRating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 25.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              setState(
                                () {
                                  starRating = rating;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Uniqueness of steel sadial tyre",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Reviewed on January 30.01.2024"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text("Great design"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text("Great looks"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 30.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: appthemecolor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Helpful",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
