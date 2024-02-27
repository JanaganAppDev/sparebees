import 'package:flutter/material.dart';

import '../../constants.dart';
import '../profile_view.dart';

class TermsView extends StatefulWidget {
  TermsView({super.key});

  @override
  State<TermsView> createState() => _TermsViewState();
}

class _TermsViewState extends State<TermsView> {
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
          "Privacy Policy",
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
                "E-Commerce - Terms & Conditions SpareBees E Commerce store (https://sparebees.com) owns and operates this website. This document governs your relationship with https://sparebees.com (“Website”). Access to and use of this website and the products and services available throughout (collectively, the “Services”) are subject to the following terms, conditions and notices (the “Terms of Service”). By using the Services, you are agreeing to all of the Terms of Service, as may be updated by us from time to time. In addition, you are representing that you are making a purchase for products for your own personal use and not for resale. You should check this page regularly to take notice of any changes we may have made to the Terms of Service. 1. Other Documents THESE TERMS AND CONDITIONS APPLY UNLESS YOU HAVE EXECUTED A SEPARATE PURCHASE AGREEMENT WITH sparebbees.com. Any attempt to alter, supplement, modify or amend these terms and conditions will be null and void unless agreed to in writing by SpareBees E commerce store. 2. Terms of Sale By placing an order you are offering to purchase a product on and subject to the following terms and conditions. All orders are subject to availability and confirmation of the order price. (a) View Cart The view cart shows the items added to the cart along with the item details. You can update the entered quantity, remove it altogether from the shopping cart or even empty the entire cart too. If you are done with your shopping, click on the Checkout button to check out of the shop or continue shopping (b) Check Out If you have finished shopping, click on the Check Out button. The checkout page will give you the value of the items that you have purchased along with the taxes (if available) on it. Next, select the mode of delivery of the products (for product sales only) and the shipping address. Shipping charges are now calculated and added to the item value and taxes. As a final step, select your payment method. If credit card is your chosen option, the order value will be charged to your credit card. Click on the Confirm Order button to confirm your order. Your order will be created and an email will be sent to you with the order details. (c)Our Contract When you place an order, you will receive an acknowledgment e-mail confirming receipt of your order this email will only be an acknowledgment and will not constitute acceptance of your order. A contract between us will not be formed until we send you confirmation by e-mail that the goods which you ordered have been dispatched to you. Only those goods listed in the confirmation e-mail sent at the time of dispatch will be included in the contract formed. (d) Payment Upon receiving your order, we carry out a standard authorization check on your payment card to ensure there are sufficient funds to fulfill the transaction. Your card will be debited upon authorization being received. The monies received upon the debiting of your card shall be treated as a deposit against the value of the goods you wish to purchase. Once the goods have been dispatched and you have been sent a confirmation email, the monies paid as a deposit shall be used as consideration for the value of goods you have purchased as listed in the confirmation email. (e) Prices; Shipping and Handling Charges; Taxes All prices do not include charges for shipping and handling, for sales/use taxes, and for other government required fees. Separate charges will be shown on the order acknowledgment for each applicable order. Taxes will be charged for orders shipped to states in which sparebbees.com is obligated to collect and report such sales. When you place an order, we will estimate shipping and delivery dates for you based on the availability of your items and the shipping options you choose. Depending on the shipping provider you choose, shipping date estimates may appear on the shipping quotes page. Please also note that the shipping rates for many items we sell are weight-based. The weight of any such item can be found on its detail page. To reflect the policies of the shipping companies we use, all weights will be rounded up to the next full dollar amount. 3. Return Policy: we keep a separate option in homepage.kindly read it 4. Disclaimer – cosmetics, health products, perfumed Body Oils Our perfumed body oils listed in this website are inspired by the designer perfumes, which are the trademarks of their respective owners. We do not have any associations with them nor are we claiming that the perfumes oil is designed by them. Pricing for body oils listed on the website may change at any time without prior notice. 5.Privacy You can be assured of your privacy from us. We will not divulge your personal information to anyone. All of the personal data received by sparebbees.com and is kept confidential and is used only to process your order. We do not sell or rent our customer list or any personal information to any other person, company or organization. We encrypt order information for your protection using industry-standard SSL encryption. SSL encrypts your personal account information and secures your purchase and credit card information. We do not sell or market your email or order information of our customers to other companies. When you place an order with us, we ask for the standard personal information in our order form such as name, address, email, contact phone number, etc. – in order for us to ship your order to you. This information is kept secure in protected systems. We may use this information to contact you (via email for example) regarding a pending order. To advise you how we handle your personal data that is gathered on-line, please see our privacy policy at the following URL: https://sparebees.com/privacy-policy 6. Indemnity You agree to indemnify, defend and hold harmless https://sparebees.com, its directors, officers, employees, consultants, agents, and affiliates, from any and all third party claims, liability, damages and/or costs (including, but not limited to, legal fees) arising from your use of this Website of your breach of these Terms of Service. 7. Invalidity If any part of the Terms of Service is unenforceable (including any provision in which we exclude our liability to you), the enforceability of any other part of the Terms of Service will not be affected all other clauses remaining in full force and effect. So far as possible where any clause/sub-clause or part of a clause/sub-clause can be severed to render the remaining part valid, the clause shall be interpreted accordingly. Alternatively, you agree that the clause shall be rectified and interpreted in such a way that closely resembles the original meaning of the clause/sub-clause as is permitted by law. 8. Complaints We operate a complaints handling procedure which we will use to try to resolve disputes when they first arise. Please let us know if you have any complaints or comments. 9. Entire Agreement The above Terms of Service constitute the entire agreement of the parties and supersede any and all preceding and contemporaneous agreements between you and https://sparebees.com Any waiver of any provision of the Terms",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
