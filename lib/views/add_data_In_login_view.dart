
import 'package:authentication/core/style/app_color.dart';
import 'package:flutter/material.dart';

import 'Sign_up.dart';
import '../core/style/font_style.dart';
import '../Widget/custom_button.dart';
import '../Widget/custom_text_form_Feild.dart';

class AddDataInLoginView extends StatelessWidget {
  AddDataInLoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
height: 115,
              color: MyColors.mainColor,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 40,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Welcome',
                    style: FontStyles.font24Weight600Black,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(horizontal: 30),
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
                  children: [
                    const SizedBox(
                      height: 30,
                    ),

                    Text(
                      'Manage your Business ',
                      style: FontStyles.font24Weight600Black,
                    ),
                    Text('with SaaS Blue ',
                        style: FontStyles.font24Weight600Black),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldWidget(
                      controller: emailController,
                      label: 'Enter Your e-mail to login ',
                      hintText: "Enter - Email ",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 10,
                      thickness: 5,
                      color: Colors.grey.withOpacity(0.25),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enter your e-mail to login",
                          style: FontStyles.font16Weight400LightBlack,
                          textDirection: TextDirection.ltr,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             CountryCodeDropdown(),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "        Enter Number",
                                  filled: true,
                                  fillColor: const Color(0xffF8F8F8),
                                  prefixIcon: Image.asset("assets/images/img.png",),
                                  errorStyle: FontStyles.font12Weight400Black
                                      .copyWith(color: Colors.red),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Continue ',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Forget Password or ",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                        Text("Create  Account"),
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
