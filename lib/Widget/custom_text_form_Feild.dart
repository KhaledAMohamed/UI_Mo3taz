import 'package:flutter/material.dart';

import '../core/style/app_color.dart';
import '../core/style/font_style.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
     this.label,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmitted,
    this.isPassword = false,
    this.hintText,
  });

  final bool isPassword;

  final String? label;
  final String? hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$label",
                style: FontStyles.font16Weight400LightBlack,
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          TextFormField(
              obscureText: isPassword,
              controller: controller,
              onFieldSubmitted: onSubmitted,
              validator: validator,
              keyboardType: keyboardType,
              onChanged: onChanged,
              style: const TextStyle(

              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffF8F8F8),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                hintText: "$hintText",
                errorStyle:  FontStyles.font12Weight400Black.copyWith(color: Colors.red),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide:  const BorderSide(width: 1, color:Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
