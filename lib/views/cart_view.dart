import 'package:flutter/material.dart';
import 'package:sparebess/views/categoriesbar.dart';
import 'package:sparebess/views/home_view.dart';
import 'package:sparebess/views/profile_view.dart';

import '../constants.dart';

class CartViewPage extends StatefulWidget {
  @override
  State<CartViewPage> createState() => _CartViewPageState();
}

class _CartViewPageState extends State<CartViewPage> {
  final List<String> cartItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 3;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Cart View'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index]),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                // Remove item from the cart
                // You can implement your logic here
              },
            ),
          );
        },
      ),
    );
  }
}
