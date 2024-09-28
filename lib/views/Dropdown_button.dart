import 'package:flutter/material.dart';
class CountryCodeDropdown extends StatefulWidget {
  const CountryCodeDropdown({super.key});

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
    return Container(
      height: 57,
      decoration: const BoxDecoration(
        color: Color(0xff76A9EA),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))
      ),
      child: Center(
        child: DropdownButton(
          hint: const Text('+974'),
          focusColor: const Color(0xff76A9EA),
          value: selectedCountryCode,
          items: countries.map((country) {
            return DropdownMenuItem(
              value: country['code'],
              child: Text(country['code']!),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              selectedCountryCode = newValue!;
            });
          },
        ),
      ),
    );
  }
}