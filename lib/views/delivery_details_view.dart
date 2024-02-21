import 'package:flutter/material.dart';

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
            color: Color.fromARGB(255, 176, 20, 9),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
                  TextFormField(
                    controller: countryController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: firstNameController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
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
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: townCityController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
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
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromARGB(255, 176, 20, 9)),
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: StateController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 176, 20, 9)),
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
                  SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(height: 1),
                      Checkbox(
                        value: saveInformation,
                        onChanged: (bool? value) {
                          setState(() {
                            saveInformation = value ?? false;
                          });
                        },
                        activeColor: const Color.fromARGB(255, 194, 30, 18),
                      ),
                      Text("Save this information for the next order"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 20, 9),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print("Country: ${countryController.text}");
                          print("First Name: ${firstNameController.text}");
                          print("Last Name: ${lastNameController.text}");
                          print("Address: ${addressController.text}");
                          print("Town/City: ${townCityController.text}");
                          print("Zipcode: ${ZipcodeController.text}");
                          print("State: ${StateController.text}");
                          print("Phone Number: ${phoneNumberController.text}");
                          print("Save Information: $saveInformation");
                        }
                      },
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
