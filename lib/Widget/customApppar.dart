import 'package:authentication/core/style/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar( this.text);
  String? text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
       ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_circle_left_outlined,
        size: 30,
        color: Colors.black,
        ),
        onPressed: () {
          // Add back button functionality
        },
      ),
    toolbarHeight: 150,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20), // Adjust the radius as needed
        ),
      ),

      title: Text(text!),
      centerTitle: true,

      backgroundColor: PColor,


    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(114);
}