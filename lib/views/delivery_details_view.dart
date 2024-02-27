import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sparebess/constants.dart';

class DeliveryDetails extends StatefulWidget {
  @override
  State<DeliveryDetails> createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  final _formKey = GlobalKey<FormState>();
  final countryController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final areaController = TextEditingController();
  final townCityController = TextEditingController();
  final ZipcodeController = TextEditingController();
  final StateController = TextEditingController();
  final phoneNumberController = TextEditingController();
  bool saveInformation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Details",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            color: appthemecolor,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: countryController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        labelText: "Country",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your country";
                        }

                        // Use a regular expression to allow only alphabets
                        RegExp alphabetsOnly = RegExp(r'^[a-zA-Z]+$');
                        if (!alphabetsOnly.hasMatch(value)) {
                          return "Enter a valid country ";
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: firstNameController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              labelStyle: TextStyle(fontSize: 12),
                              labelText: "Enter Your First Name",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your First Name";
                              }

                              // Use a regular expression to allow only alphabets
                              RegExp alphabetsOnly = RegExp(r'^[a-zA-Z]+$');
                              if (!alphabetsOnly.hasMatch(value)) {
                                return "Enter a valid Name ";
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            controller: lastNameController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              labelStyle: TextStyle(fontSize: 12),
                              labelText: "Enter Your Last Name",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your Last Name";
                              }

                              // Use a regular expression to allow only alphabets
                              RegExp alphabetsOnly = RegExp(r'^[a-zA-Z]+$');
                              if (!alphabetsOnly.hasMatch(value)) {
                                return "Enter a valid Name ";
                              }

                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        labelText: "Address",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Address";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        labelText: "Road Name, Area, Colony",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Address";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: areaController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              labelStyle: TextStyle(fontSize: 12),
                              labelText: "Town/City",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your Town/city";
                              }

                              // Use a regular expression to allow only alphabets
                              RegExp alphabetsOnly = RegExp(r'^[a-zA-Z]+$');
                              if (!alphabetsOnly.hasMatch(value)) {
                                return "Enter a valid Town/City ";
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            controller: ZipcodeController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: appthemecolor),
                              ),
                              labelStyle: TextStyle(fontSize: 12),
                              labelText: "Zipcode",
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Zipcode is required";
                              }
                              if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                                return "Enter a valid Zipcode";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: StateController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        labelText: "State",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your State";
                        }

                        // Use a regular expression to allow only alphabets
                        RegExp alphabetsOnly = RegExp(r'^[a-zA-Z]+$');
                        if (!alphabetsOnly.hasMatch(value)) {
                          return "Enter a valid State ";
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: phoneNumberController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appthemecolor),
                        ),
                        labelText: "Phone Number",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Phone number is required";
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: saveInformation,
                        onChanged: (bool? value) {
                          setState(() {
                            saveInformation = value ?? false;
                          });
                        },
                        activeColor: appthemecolor,
                      ),
                      Text(
                        "Save this information for the next order",
                        style: TextStyle(fontSize: 12, fontFamily: "Lato"),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        /*if (_formKey.currentState!.validate()) {
                          print("Country: ${countryController.text}");
                          print("First Name: ${firstNameController.text}");
                          print("Last Name: ${lastNameController.text}");
                          print("Address: ${addressController.text}");
                          print("Town/City: ${townCityController.text}");
                          print("Zipcode: ${ZipcodeController.text}");
                          print("State: ${StateController.text}");
                          print("Phone Number: ${phoneNumberController.text}");
                          print("Save Information: $saveInformation");
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
                        "Next",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: "Lato"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
