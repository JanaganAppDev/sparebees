import 'package:flutter/material.dart';
import 'package:sparebess/constants.dart';

class MyOrdersView extends StatefulWidget {
  MyOrdersView({Key? key}) : super(key: key);

  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Orders',
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              color: appthemecolor,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: Icon(Icons.chevron_left),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                "lib/images/tyres/tr1.png",
                                scale: 0.7,
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  'Arriving Today by 10 PM',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontFamily: "Lato",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Out for delivery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: "Lato",
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
