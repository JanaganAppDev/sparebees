import 'package:flutter/material.dart';

import '../../constants.dart';
import '../profile_view.dart';

class PricingDetailsView extends StatefulWidget {
  PricingDetailsView({super.key});

  @override
  State<PricingDetailsView> createState() => _PricingDetailsViewState();
}

class _PricingDetailsViewState extends State<PricingDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profileview()));
          },
        ),
        title: Text(
          "Pricing Details",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              color: appthemecolor,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pricing Details for SpareBees.com (Automotive Parts E-commerce Store):",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "At SpareBees.com, we are dedicated to providing competitive and transparent pricing for our wide range of automotive parts. We believe in offering fair and affordable prices to ensure your satisfaction with every purchase. Here are the key details regarding our pricing",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Competitive Pricing: We continuously strive to offer competitive prices on all our automotive parts. We regularly monitor the market and adjust our prices accordingly to provide you with the best value for your money.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Price Transparency: We are committed to maintaining transparency in our pricing. The displayed prices on our website are inclusive of all applicable taxes, duties, and fees. You can trust that the price you see is the final price you will pay at the time of checkout.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Product Variations: Some automotive parts may have variations in pricing due to factors such as brand, quality, compatibility, or availability. We clearly display the price for each specific product variant, enabling you to make an informed decision based on your requirements and budget.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Discounts and Promotions: We frequently offer discounts, promotions, and special deals on selected automotive parts. Keep an eye on our website or subscribe to our newsletter to stay updated on the latest offers and savings opportunities.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Price Matching: We understand that finding the best price is important to our customers. If you come across a lower price for the same automotive part on a competitor's website, please reach out to us. We strive to match or beat competitor prices whenever possible, providing you with the best deal availableShipping costs are calculated separately and will be displayed during the checkout process. The shipping charges may vary depending on the destination, weight, and dimensions of the ordered items. We aim to provide competitive shipping rates and partner with reliable shipping carriers to ensure timely and secure delivery of your automotive parts.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Currency and Payment Options: Our website supports multiple currencies to accommodate international customers. You can select your preferred currency from the options available. We accept various payment methods, including major credit cards, debit cards, and secure online payment gateways, to offer you convenience and flexibility.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "We strive to provide accurate and up-to-date pricing information on our website. However, in the unlikely event of a pricing error, we reserve the right to correct the price and notify you before processing your order.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "For any further inquiries or clarification regarding pricing, please feel free to contact our customer support team. We are here to assist you and ensure your satisfaction with our competitive and transparent pricing at SpareBees.com, your trusted automotive parts destination.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Cancellation and Refund Policy for SpareBees.com (Automotive Parts E-commerce Store):At SpareBees.com, we understand that circumstances may arise where you need to cancel an order or seek a refund. We aim to make the cancellation and refund process as convenient and transparent as possible. ",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
