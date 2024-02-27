import 'package:flutter/material.dart';
import 'package:sparebess/views/profile_view.dart';

import '../../constants.dart';

class AboutUsView extends StatefulWidget {
  AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
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
          "About Us",
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
                "Welcome to SpareBees.com, your trusted destination for all your automotive parts needs. We are a leading online automotive e-commerce store dedicated to providing high-quality parts and accessories for a wide range of vehicles. With a vast selection, competitive prices, and excellent customer service, we aim to be your go-to source for automotive parts.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Our Mission",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Lato",
                  color: appthemecolor,
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                ),
              ),
              Text(
                "At SpareBees.com, our mission is to empower vehicle owners and enthusiasts by offering a comprehensive selection of top-notch automotive parts. We strive to make the process of finding and purchasing the right parts as simple and convenient as possible, ensuring that you can maintain, repair, or upgrade your vehicle with confidence.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Wide Range of Automotive Parts: We understand that each vehicle is unique, which is why we offer a diverse range of automotive parts to cater to various makes, models, and years. From essential components such as engines, brakes, and suspension systems to interior and exterior accessories, our catalog is carefully curated to meet your specific automotive needs. Our extensive inventory includes parts from trusted manufacturers, ensuring durability, performance, and reliability.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Quality and Authenticity: At SpareBees.com, we prioritize quality and authenticity. We partner with reputable suppliers and manufacturers who adhere to strict quality control standards. This allows us to offer genuine and OEM (Original Equipment Manufacturer) parts, giving you peace of mind knowing that you are receiving reliable and authentic products for your vehicle.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Competitive Pricing: We believe that quality automotive parts should be affordable. Our team works tirelessly to negotiate competitive prices with our suppliers, allowing us to pass on the savings to you. We continuously monitor the market to ensure that our prices remain competitive without compromising on the quality of our products.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "User-Friendly Shopping Experience: We are committed to providing a user-friendly and intuitive shopping experience. Our website features a streamlined interface that allows you to easily navigate through our extensive product categories, search for specific parts, and access detailed product information. With our user-friendly interface, secure payment options, and efficient order processing, we aim to make your online shopping experience hassle-free.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Exceptional Customer Service: At SpareBees.com, customer satisfaction is our top priority. Our dedicated customer support team is here to assist you throughout your shopping journey. Whether you have questions about product compatibility, need assistance with order tracking, or require any other support, our knowledgeable and friendly team is ready to help. We strive to provide prompt and personalized customer service to ensure your complete satisfaction.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "We value your trust and strive to build long-lasting relationships with our customers. Whether you are a car enthusiast, a DIY mechanic, or a vehicle owner looking for reliable parts, SpareBees.com is your trusted partner. Explore our extensive catalog, enjoy competitive prices, and experience exceptional service. Start your automotive parts journey with us today!",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Thank you for choosing SpareBees.com. We look forward to serving you and helping you find the perfect parts for your vehicle.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  height: 2.0,
                ),
              ),
              Text(
                "Your friends at SpareBees.com",
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
