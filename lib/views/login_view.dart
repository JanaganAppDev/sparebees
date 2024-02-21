import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/constants.dart';
import 'package:sparebess/views/number_verification.dart';

import 'navigation_view.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;
  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    double screenhieght = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60.0, bottom: 15),
                  child: Center(
                    child: Image.asset("lib/images/welcome/sparebees_logo.png",
                        scale: 1.5),
                  ),
                ),
                Text(
                  "Login to your Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, bottom: 8, left: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login with mobile number",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: phoneNumberController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    //validator: _validatePassword,
                    controller: passwordController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      hintText: " Enter Password",
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
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
                    ),
                    obscureText: !_passwordVisible,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: screenwidth,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NumberVerificationView()));
                        /*print("trues");
                        if (_formKey.currentState!.validate()) {
                          */ /*signup(
                              //country_codeController.text.toString(),
                              passwordController.text.toString(),
                              phoneNumberController.text.toString());*/ /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBarNavigation()));
                        } else {
                          print("failed");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBarNavigation()));
                        }*/
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
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Center(
                    child: Row(
                      children: [
                        Divider(
                          height: 2,
                          thickness: 1,
                          indent: 5,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 170.0),
                          child: Text("or"),
                        ),
                        Divider(
                          height: 2,
                          thickness: 1,
                          indent: 5,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 125.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Transform.scale(
                          scale: 0.7,
                          child: Image.asset(
                            'lib/images/share/share8.png',
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Transform.scale(
                          scale: 0.7,
                          child: Image.asset(
                            'lib/images/share/share9.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          /* Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginPage()));*/
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: appthemecolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "By entering your number.you're agreeing to our ",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Terms of",
                            style: TextStyle(
                              fontSize: 12,
                              color: appthemecolor,
                              decoration: TextDecoration.underline,
                              decorationColor: appthemecolor,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        child: Row(
                          children: [
                            Text(
                              "Services",
                              style: TextStyle(
                                fontSize: 12,
                                color: appthemecolor,
                                decoration: TextDecoration.underline,
                                decorationColor: appthemecolor,
                              ),
                            ),
                            Text(
                              "and",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Privacy policy",
                              style: TextStyle(
                                fontSize: 12,
                                color: appthemecolor,
                                decoration: TextDecoration.underline,
                                decorationColor: appthemecolor,
                              ),
                            ),
                            Text(
                              "Thanks!",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
