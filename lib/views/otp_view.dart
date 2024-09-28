
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../core/style/app_color.dart';
import '../core/style/font_style.dart';
import '../Widget/custom_button.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 205,
              width: double.infinity,
              child: Column(
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
                    "Enter OTP Code",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    "Please enter the OTP Code",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
                  Center(
                      child: Text(
                    "sent to your mobile xxxx-9099",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ))
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
                      "Enter the OTP Code sent to mobile",
                      style: FontStyles.font16Weight400LightBlack,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: 80,
                      child: OtpTextField(
                        numberOfFields: 5,
                        fieldHeight: 80,
                        fieldWidth: 48,
                        cursorColor: Colors.black,
                        contentPadding: const EdgeInsets.all(2),
                        focusedBorderColor: Colors.black,
                        showFieldAsBox: true,
                        borderWidth: 2.0,
                      ),
                    ),

                    CustomButton(
                      text: "Continue",
                      onPressed: () {},
                      color: MyColors.greenColor,
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    Row(
                      children: [
                        const Text("Resend OTP Code"),
                        const Spacer(),
                        TimerCountdown(
                          format: CountDownTimerFormat.minutesSeconds,
                          enableDescriptions: false,
                          timeTextStyle: FontStyles.font16Weight400LightBlack
                              .copyWith(
                              color: Colors.grey,
                              decoration: TextDecoration.underline),
                          spacerWidth: 3,
                          endTime: DateTime.now().add(
                            const Duration(
                              seconds: 60,
                            ),
                          ),
                        ),
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
