
import 'package:flutter/material.dart';

import '../Widget/TextFeild.dart';
import '../Widget/custom_button.dart';

class Business_Details extends StatefulWidget {
  const Business_Details({Key? key}) : super(key: key);

  @override
  State<Business_Details> createState() => _Business_DetailsState();
}

class _Business_DetailsState extends State<Business_Details> {
  String? _selectedBusinessType;
  bool _isHomeBusiness = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 330,
            width: double.infinity,
            color: const Color(0xFFBAD5F3), // استخدم لون الخلفية
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                Center(
                    child: Text(
                  "Business Details",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  "Enter your Business Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )),
                Center(
                    child: Text(
                  "registered in Qatar",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ))
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Business Name",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      hintText: 'Enter business name',
                      Text: 'Enter business name',
                      height: 60,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Type of Business',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    RadioListTile<String>(
                      title: const Text('Home Business'),
                      value: 'home',
                      groupValue: _selectedBusinessType,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedBusinessType = value;
                          _isHomeBusiness = value == 'home';
                        });
                      },
                    ),
                    if (_isHomeBusiness)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomTextField(
                          hintText: 'Enter License Number',
                          Text: 'Enter License Number',
                          height: 60,
                          width: double.infinity,
                        ),
                      ),
                    RadioListTile<String>(
                      title: const Text('Company'),
                      value: 'company',
                      groupValue: _selectedBusinessType,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedBusinessType = value;
                          _isHomeBusiness = value == 'home';
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Business Category',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    DropdownButtonFormField<String>(
                      hint: const Text('Select Business Category'),
                      items: [
                        const DropdownMenuItem(
                            value: 'Category 1', child: Text('Category 1')),
                        const DropdownMenuItem(
                            value: 'Category 2', child: Text('Category 2')),
                        const DropdownMenuItem(
                            value: 'Category 3', child: Text('Category 3')),
                      ],
                      onChanged: (String? value) {
                        // كود للتعامل مع اختيار الفئة
                      },
                    ),
                    CustomButton(text: "Continue", onPressed: (){
                      _showDialog(context);
                    }),
                    const SizedBox(height: 10,),
                    const Center(
                      child: Text('Click proceed to subscriptions',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: const Text('Account Created',
        textAlign: TextAlign.center,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.blueAccent,
          fontSize: 24


        ),
        content: const Text('Congratulations your account has been created for your business'),
        actions: <Widget>[
          Center(
            child: TextButton(
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ),
        ],
      );
    },
  );
}

