import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue[100], // اللون الخلفي للقسم
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 54,
            width: 223,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Text(
                  "Total Bill",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                Text(
                  "QR 1999",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // اضافة الاكشن المطلوب عند الضغط على الزر
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // لون الزر
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              fixedSize: const Size(140,50),


              // تحديد ارتفاع الزر
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "Continue",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
