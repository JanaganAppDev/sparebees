import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/manageAddress_view.dart';
import '../constants.dart';
import 'categoriesbar.dart';
import 'delivery_details_view.dart';
import 'home_view.dart';

class Profileview extends StatefulWidget {
  const Profileview({Key? key});

  @override
  State<Profileview> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<Profileview> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.red[800],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("lib/images/circleavatar.png"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Sparebees",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildListTileWithBorder(
              title: 'My Orders',
              leadingIcon: Icons.shopping_bag_outlined,
              iconColor: appthemecolor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeliveryDetails()),
                );
              },
            ),
            buildListTileWithBorder(
              title: 'Rewards',
              leadingIcon: Icons.wallet_giftcard_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Return',
              leadingIcon: Icons.keyboard_return_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Refund',
              leadingIcon: Icons.assignment_return_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Wishlist',
              leadingIcon: Icons.favorite_border_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ManageAddress()));
              },
              child: buildListTileWithBorder(
                title: 'Address',
                leadingIcon: Icons.location_on_outlined,
                iconColor: appthemecolor,
                onTap: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ManageAddress()));*/
                },
              ),
            ),
            buildListTileWithBorder(
              title: 'Notification',
              leadingIcon: Icons.notifications_active_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'About Us',
              leadingIcon: Icons.support_agent,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Privacy Policy',
              leadingIcon: Icons.support_agent,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Terms and Condition',
              leadingIcon: Icons.support_agent,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Cancellation & Refund Policy',
              leadingIcon: Icons.support_agent,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Pricing Details',
              leadingIcon: Icons.money_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Order History',
              leadingIcon: Icons.history,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            buildListTileWithBorder(
              title: 'Logout',
              leadingIcon: Icons.logout,
              iconColor: appthemecolor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTileWithBorder({
    required String title,
    required IconData leadingIcon,
    required Color iconColor,
    required VoidCallback onTap,
    double borderRadius = 10.0,
  }) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 8.0, right: 8.0),
        child: ListTile(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 0.9),
              borderRadius: BorderRadius.circular(10)),
          title: Text(title),
          leading: Icon(
            leadingIcon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
