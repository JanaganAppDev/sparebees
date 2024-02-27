import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sparebess/views/login_screens/login_view.dart';
import 'package:sparebess/views/navigation_view.dart';
import 'package:sparebess/views/login_screens/register_view.dart';
import 'package:sparebess/views/terms_condition/aboutus_view.dart';
import 'package:sparebess/views/terms_condition/cancellation_view.dart';
import 'package:sparebess/views/cart_view.dart';
import 'package:sparebess/views/manageAddress_view.dart';
import 'package:sparebess/views/myorders_view.dart';
import 'package:sparebess/views/orderhistory_view.dart';
import 'package:sparebess/views/payment_view.dart';
import 'package:sparebess/views/terms_condition/pricing_detaile_view.dart';
import 'package:sparebess/views/terms_condition/privacy_policy_view.dart';
import 'package:sparebess/views/rewards_view.dart';
import 'package:sparebess/views/terms_condition/terms_view.dart';
import 'package:sparebess/views/wishlist_view.dart';
import '../constants.dart';
import 'categories_view.dart';
import 'checkout_view.dart';
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
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomBarNavigation()));
          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.red[800], fontFamily: "Lato"),
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
                  fontFamily: "Lato"),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrdersView()),
                );
              },
              child: buildListTileWithBorder(
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
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RewardsPageView()),
                );
              },
              child: buildListTileWithBorder(
                title: 'Rewards',
                leadingIcon: Icons.wallet_giftcard_outlined,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            buildListTileWithBorder(
              title: 'Return',
              leadingIcon: Icons.keyboard_return_outlined,
              iconColor: appthemecolor,
              onTap: () {},
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentView(
                              title: '',
                            )));
              },
              child: buildListTileWithBorder(
                title: 'Refund',
                leadingIcon: Icons.assignment_return_outlined,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WishlistPage()));
              },
              child: buildListTileWithBorder(
                title: 'Wishlist',
                leadingIcon: Icons.favorite_border_outlined,
                iconColor: appthemecolor,
                onTap: () {},
              ),
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
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsView()));
              },
              child: buildListTileWithBorder(
                title: 'About Us',
                leadingIcon: Icons.support_agent,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyPolicyView()));
              },
              child: buildListTileWithBorder(
                title: 'Privacy Policy',
                leadingIcon: Icons.support_agent,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TermsView()));
              },
              child: buildListTileWithBorder(
                title: 'Terms and Condition',
                leadingIcon: Icons.support_agent,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CancellationView()));
              },
              child: buildListTileWithBorder(
                title: 'Cancellation & Refund Policy',
                leadingIcon: Icons.support_agent,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PricingDetailsView()));
              },
              child: buildListTileWithBorder(
                title: 'Pricing Details',
                leadingIcon: Icons.money_outlined,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderHistory()));
              },
              child: buildListTileWithBorder(
                title: 'Order History',
                leadingIcon: Icons.history,
                iconColor: appthemecolor,
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Logout?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lato",
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Are you sure to logout from Take Me app?",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: "Lato",
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Not Now",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterView()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: appthemecolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      shadowColor: Colors.grey,
                                      elevation: 8,
                                    ),
                                    child: Text(
                                      "Logout",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: buildListTileWithBorder(
                title: 'Logout',
                leadingIcon: Icons.logout,
                iconColor: appthemecolor,
                onTap: () {},
              ),
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
