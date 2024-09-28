
import 'package:flutter/material.dart';

import '../core/style/app_color.dart';
import '../core/style/font_style.dart';
import '../Widget/custom_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/image1.png",
                height: MediaQuery.sizeOf(context).height / 1.77,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 1,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Manage your Business ',
                      style: FontStyles.font24Weight600Black,
                    ),
                    Text(
                        'with SaaS Blue ',
                        style: FontStyles.font24Weight600Black),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Sign Up ',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign In or Login ",style:TextStyle(color: Colors.deepOrange) ,),
                        Text("now to your Account"),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
