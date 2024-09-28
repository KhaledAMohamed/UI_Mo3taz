import 'package:authentication/core/style/Const.dart';
import 'package:flutter/material.dart';

import '../Widget/TextFeild.dart';
import '../Widget/customApppar.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Welcom'),
      body: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  String email = '';
  String mobileNumber = '';
  String otp = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text(
                  'Sign up your Business',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const Center(
                child: Text(
                  ' with SaaS Blue',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                'Full Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                hintText: 'Enter full name',
                icon: Icons.person,
                width: screenWidth,
                height: 60,
                onChanged: (value) {
                  setState(() {
                    fullName = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              // حقل البريد الإلكتروني مع زر
              const Text(
                'Email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Enter your e-mail',
                      icon: Icons.email,
                      width: screenWidth,
                      height: 60,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // وضع الكود لإرسال OTP للبريد الإلكتروني
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0x5ECCCCCC),
                      // نفس لون CustomTextField
                      minimumSize:
                          const Size(50, 50), // نفس ارتفاع CustomTextField
                    ),
                    child: const Text('Send me'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // حقل رقم الهاتف مع زر
              const Text(
                'Mobile Number',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    width: 100, // عرض ثابت للـ DropdownButton
                    child: CountryCodeDropdown(),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Enter your mobile number',
                      icon: Icons.phone,
                      width: screenWidth,
                      height: 60,
                      onChanged: (value) {
                        setState(() {
                          mobileNumber = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // وضع الكود لإرسال OTP لرقم الهاتف
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0x5ECCCCCC),
                      // نفس لون CustomTextField
                      minimumSize:
                          const Size(50, 50), // نفس ارتفاع CustomTextField
                    ),
                    child: const Text('Send me'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // حقل OTP
              const Text(
                'OTP Code',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Enter OTP Code',
                      icon: Icons.lock,
                      width: screenWidth,
                      height: 60,
                      onChanged: (value) {
                        setState(() {
                          otp = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // وضع الكود لإرسال OTP
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x5ECCCCCC), // نفس لون CustomTextField
                      minimumSize: Size(50, 50), // نفس ارتفاع CustomTextField
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius 10
                      ),
                    ),
                    child: Text('Submit'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // زر المتابعة
              ElevatedButton(

                onPressed: () {
                  // كود التسجيل
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1F5CAB)
                  ,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Continue'),
              ),
              const SizedBox(height: 10),

              // نص تسجيل الدخول
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Forgot Password or ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // الانتقال إلى صفحة تسجيل الدخول
                      },
                      child: const Text(
                        'Login now',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryCodeDropdown extends StatefulWidget {
  @override
  _CountryCodeDropdownState createState() => _CountryCodeDropdownState();
}

class _CountryCodeDropdownState extends State<CountryCodeDropdown> {
  String? selectedCountryCode;

  final List<Map<String, String>> countries = [
    {'name': 'Qatar', 'code': '+974'},
    {'name': 'Saudi Arabia', 'code': '+966'},
    {'name': 'United Arab Emirates', 'code': '+971'},
    {'name': 'Kuwait', 'code': '+965'},
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Code'),
      value: selectedCountryCode,
      items: countries.map((country) {
        return DropdownMenuItem<String>(
          value: country['code'],
          child: Text(country['code']!),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedCountryCode = newValue!;
        });
      },
    );
  }
}
