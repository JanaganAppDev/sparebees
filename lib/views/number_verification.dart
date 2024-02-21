import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/views/otp_view.dart';

import '../constants.dart';

class NumberVerificationView extends StatefulWidget {
  NumberVerificationView({super.key});

  @override
  State<NumberVerificationView> createState() => _NumberVerificationViewState();
}

class _NumberVerificationViewState extends State<NumberVerificationView> {
  TextEditingController NumberVerificationController = TextEditingController();

  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    double screenhieght = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60.0, bottom: 15),
                    child: Center(
                        child: Image.asset(
                            "lib/images/welcome/sparebees_logo.png",
                            scale: 1.5)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 70),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter Phone Number for Verification",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: Text(
                      "This number will be used for all ride-related communication.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 18.0),
                    child: TextFormField(
                      controller: NumberVerificationController,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Enter Phone Number',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              _isButtonClicked ? 10.0 : 10.0),
                          borderSide: BorderSide(
                            color: _isButtonClicked ? Colors.red : Colors.grey,
                          ),
                        ),
                        prefixIcon: CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'IN',
                          favorite: ['+91', 'IND'],
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                          alignLeft: false,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: screenwidth,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OtpView()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appthemecolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        shadowColor: Colors.grey,
                        elevation: 8,
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
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
