import 'package:flutter/material.dart';

import '../../constants.dart';
import '../profile_view.dart';

class CancellationView extends StatefulWidget {
  CancellationView({super.key});

  @override
  State<CancellationView> createState() => _CancellationViewState();
}

class _CancellationViewState extends State<CancellationView> {
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
          "Cancellation & Refund Policy",
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
                "At SpareBees.com, we understand that circumstances may arise where you need to cancel an order or seek a refund. We aim to make the cancellation and refund process as convenient and transparent as possible. Please review our policy below:",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Order Cancellation: If you wish to cancel your order, please contact our customer support team as soon as possible. We will make every effort to accommodate your request; however, please note that orders can only be canceled before they have been shipped. Once an order has been shipped, it cannot be canceled but may be eligible for a return as per our return policy.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Refund Eligibility: Refunds are processed in accordance with our return policy. To be eligible for a refund, the returned item must meet the criteria outlined in our return policy. This includes the item being unused, undamaged, and in its original packaging. Please refer to our return policy for detailed information on eligibility.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Refund Process: Once the returned item is received and its condition is verified, we will initiate the refund process. Refunds will be issued to the original payment method used during the purchase. Please note that it may take several business days for the refund to reflect in your account, depending on your payment provider.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Partial Refunds: In some cases, a partial refund may be issued. This can occur if the returned item is not in its original condition, is missing parts, or shows signs of use or damage that affect its resale value. We reserve the right to deduct a restocking fee or assess a diminished value based on the condition of the returned item.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Non-Refundable Items: Certain items, such as personalized or custom-made parts, may be non-refundable unless they are found to be defective. Additionally, items designated as  are also non-refundable unless they are found to be defective.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Shipping Costs: If the order is canceled before shipment, any shipping fees paid will be fully refunded. However, if the order has already been shipped, the shipping fees are non-refundable. In the case of a return, the customer is responsible for the return shipping costs unless the return is due to our error or a defective product.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Communication and Assistance: If you have any questions or require further assistance regarding order cancellation or refunds, please reach out to our customer support team. We are here to provide guidance and ensure a smooth and satisfactory resolution to any cancellation or refund requests.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Please note that this cancellation and refund policy is subject to our Terms and Conditions, and we reserve the right to modify or update it at any time. We recommend reviewing our policy periodically to stay informed about any changes.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "At SpareBees.com, we value your satisfaction, and we strive to provide a fair and transparent cancellation and refund process to ensure your confidence in our services and products..",
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
