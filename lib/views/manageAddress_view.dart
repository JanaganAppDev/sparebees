import 'package:flutter/material.dart';
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
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
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
                      "Add new address",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.black),
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
                        height: 88.0,
                        width: 40.0,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    " Home",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ),
                                GestureDetector(
                                  /*onTap: () {
                                    print(addressList[index]);
                                    print("addressList[index]['flat']");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyAddressPage(addDetails:addressList[index])),
                                    );
                                    print('Container tapped!');
                                  },*/
                                  child: Container(
                                    /*decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 01.0,
                                      ),
                                    ),*/
                                    child: Icon(Icons.delete_forever,
                                        color: Colors.red, size: 22.0),
                                    width: 30.0,
                                    height: 30.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'flat',
                                ),
                                Text(","),
                                Text(
                                  'address',
                                ),
                                Text(","),
                                Text(
                                  'district',
                                ),
                                Text(","),
                                Text(
                                  'state',
                                ),
                                Text(","),
                                Text(
                                  'landmark',
                                ),
                                Text(","),
                                Text(
                                  'pincode',
                                ),
                              ],
                            ),
                            Divider(
                              height: 20,

                              ///30
                              thickness: 1,
                              indent: 0,
                              endIndent: 0,
                              color: Colors.grey,
                            )
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
                      activeColor: Colors.red,
                      dense: true,
                    );
                  },
                ),
              ),
              /*Center(
                child: CircularProgressIndicator(),
              ),*/
              Container(
                //margin: EdgeInsets.only(top: 60.0),
                width: 350.0,
                height: 45.0,
                child: ElevatedButton(
                  onPressed: () {},
                  /*{
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAddressPage()));
                  },*/
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Add another address",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
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
