import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/views/payment_status_view.dart';

import '../constants.dart';

enum SingingCharacter { razorpay, phonepe, cashOnDelivery }

class PaymentView extends StatefulWidget {
  const PaymentView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

Color Payborder = Color(0xFFDCDCDD);

class _PaymentViewState extends State<PaymentView> {
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              color: appthemecolor,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: _character == SingingCharacter.razorpay
                      ? Payborder
                      : Payborder,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _character == SingingCharacter.razorpay
                            ? appthemecolor
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      color: _character == SingingCharacter.razorpay
                          ? Colors.red.shade100
                          : null,
                    ),
                    child: Column(
                      children: [
                        RadioListTile<SingingCharacter>(
                          title: Text(
                            "Razorpay Secure (UPI, Cards, Wallets, Netbanking)",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              /*color: _character == SingingCharacter.razorpay
                                  ? appthemecolor
                                  : Colors.black,*/
                              fontFamily: "Lato",
                            ),
                          ),
                          value: SingingCharacter.razorpay,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                          tileColor: Colors.transparent,
                          selectedTileColor: Colors.transparent,
                          activeColor: appthemecolor,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 8.0,
                          children: [
                            Image.asset(
                              'lib/images/paymentImg/pay1.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay2.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay3.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay4.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay5.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay6.png',
                              height: 50,
                              width: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      /*border: Border.all(
                        color: _character == SingingCharacter.phonepe
                            ? appthemecolor
                            : Payborder,
                      ),*/
                      border: Border(
                        top: BorderSide(
                            color: _character == SingingCharacter.phonepe
                                ? appthemecolor
                                : Payborder),
                        left: BorderSide(
                            color: _character == SingingCharacter.phonepe
                                ? appthemecolor
                                : Colors.transparent),
                        right: BorderSide(
                            color: _character == SingingCharacter.phonepe
                                ? appthemecolor
                                : Colors.transparent),
                        bottom: BorderSide(
                            color: _character == SingingCharacter.phonepe
                                ? appthemecolor
                                : Payborder),
                      ),
                      color: _character == SingingCharacter.phonepe
                          ? Colors.red.shade100
                          : null,
                    ),
                    child: Column(
                      children: [
                        RadioListTile<SingingCharacter>(
                            title: Text(
                              "PhonePe Payment Gateway (UPI, Cards & Netbanking)",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                            value: SingingCharacter.phonepe,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                            tileColor: Colors.transparent,
                            selectedTileColor: Colors.transparent,
                            activeColor: appthemecolor),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 8.0,
                          children: [
                            Image.asset(
                              'lib/images/paymentImg/pay1.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay2.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay3.png',
                              height: 50,
                              width: 30,
                            ),
                            Image.asset(
                              'lib/images/paymentImg/pay4.png',
                              height: 50,
                              width: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _character == SingingCharacter.cashOnDelivery
                            ? appthemecolor
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      color: _character == SingingCharacter.cashOnDelivery
                          ? Colors.red.shade100
                          : null,
                    ),
                    child: Column(
                      children: [
                        RadioListTile<SingingCharacter>(
                            title: Text(
                              "Cash on Delivery (COD))",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                            value: SingingCharacter.cashOnDelivery,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                            tileColor: Colors.transparent,
                            selectedTileColor: Colors.transparent,
                            activeColor: appthemecolor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Container(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentStatusView()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appthemecolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Lato"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
