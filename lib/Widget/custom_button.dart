import 'package:flutter/material.dart';

import '../core/style/app_color.dart';
import '../core/style/font_style.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String text;

  final Function() onPressed;

  double? width;

Color? color ;
  CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.sizeOf(context).width,
      height: 50,
      decoration: BoxDecoration(
        color: color ?? MyColors.PColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: FontStyles.font18Weight500White,
        ),
      ),
    );
  }
}
