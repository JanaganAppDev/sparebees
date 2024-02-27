import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sparebess/constants.dart';
import 'package:sparebess/views/profile_view.dart';

import 'delivery_details_view.dart';

class ManageAddress extends StatefulWidget {
  ManageAddress({super.key});

  @override
  State<ManageAddress> createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  String groupValue = "Method $index";

  static get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manage Address",
          style: TextStyle(
            color: appthemecolor,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profileview()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Select Address",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Lato"),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeliveryDetails()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: appthemecolor, width: 1.0),
                      ),
                    ),
                    child: Text(
                      "Add New Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                          color: Colors.black,
                          fontFamily: "Lato"),
                    ),
                  ),
                ),
              ),
              Container(
                height: 600.0,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return RadioListTile(
                      title: Container(
                        margin: EdgeInsets.all(0.0),
                        height: 115.0,
                        width: 40.0,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                " Home",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Lato"),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'No:6',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Lato"),
                                    ),
                                    Text(
                                      ",",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Lato"),
                                    ),
                                    Text(
                                      'Raja Nagar',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Lato"),
                                    ),
                                    Text(
                                      ",",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Lato"),
                                    ),
                                    Text(
                                      '6th Cross',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Lato"),
                                    ),
                                    Text(
                                      ",",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Lato"),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Icon(Icons.delete_forever_outlined,
                                        color: appthemecolor, size: 22.0),
                                    width: 30.0,
                                    height: 30.0,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Pondicheery',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Lato"),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '605110.',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Lato"),
                              ),
                            ),
                            Divider(
                              height: 20,
                              thickness: 1,
                              indent: 0,
                              endIndent: 0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      value: "Method $index",
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value as String;
                        });
                      },
                      activeColor: appthemecolor,
                      dense: true,
                    );
                  },
                ),
              ),
              Container(
                //margin: EdgeInsets.only(top: 60.0),
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {},
                  /*{
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAddressPage()));
                  },*/
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appthemecolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Save Changes",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Lato"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
