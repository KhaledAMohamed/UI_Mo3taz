import 'package:authentication/core/style/app_color.dart';
import 'package:flutter/material.dart';

import '../Widget/BottomBarWidget.dart';
import '../Widget/ContenerWidget.dart';
import '../core/style/font_style.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

List<bool> isSelected = [true, false];

class _SubscriptionState extends State<Subscription> {
  int selectedIndex = 0; // 0 for "3 months", 1 for "12 months"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarWidget(),
      backgroundColor: MyColors.mainColor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 115,
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
                  'Subscription',
                  style: FontStyles.font24Weight600Black,
                ),
              ],
            ),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Choose the app to subscribe to",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ToggleButtons(
                      borderRadius: BorderRadius.circular(10),
                      borderColor: Colors.grey,
                      selectedBorderColor: Colors.orange,
                      fillColor: Colors.orange[100],
                      selectedColor: Colors.orange,
                      color: Colors.black,
                      isSelected: isSelected,
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < isSelected.length; i++) {
                            isSelected[i] = i == index;
                          }
                        });
                      },
                      children: <Widget>[
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("3 months"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "12 months",
                            style: TextStyle(
                              color: selectedIndex == 1
                                  ? Colors.greenAccent
                                  : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Contenerwidget(
                      nameApp: 'All Apps',
                      Price: 'QR 1999',
                      BPrice: '    Best Price  ', //'                '
                      ImagePath: 'assets/images/img_1.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Website & Delivery',
                      Price: 'QR 299',
                      BPrice: '      ', //'                '
                      ImagePath: 'assets/images/img_2.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Cashier & Inventory',
                      Price: 'QR 1999',
                      BPrice: '    ', //'                '
                      ImagePath: 'assets/images/img_3.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Sales & Purchase',
                      Price: 'QR 299',
                      BPrice: '         ', //'                '
                      ImagePath: 'assets/images/img_4.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Accounting & Reports',
                      Price: 'QR 299',
                      BPrice: '', //'                '
                      ImagePath: 'assets/images/img_5.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Manufacturing&Repair',
                      Price: 'QR 299',
                      BPrice: '', //'                '
                      ImagePath: 'assets/images/img_6.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'HR and Attendance',
                      Price: 'QR 299',
                      BPrice: '  ', //'                '
                      ImagePath: 'assets/images/img_7.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'HR and Attendance',
                      Price: 'QR 299',
                      BPrice: '  ', //'                '
                      ImagePath: 'assets/images/img_8.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
