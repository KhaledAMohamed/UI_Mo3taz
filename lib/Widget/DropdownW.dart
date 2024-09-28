import 'package:flutter/material.dart';
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