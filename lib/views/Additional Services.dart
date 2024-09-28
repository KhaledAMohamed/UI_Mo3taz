import 'package:flutter/material.dart';

import '../Widget/BottomBarWidget.dart';
import '../Widget/ContenerWidget.dart';
import '../core/style/app_color.dart';
import '../core/style/font_style.dart';

class Additional_Services extends StatelessWidget {
  const Additional_Services({Key? key}) : super(key: key);

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
                  'Additional Services',
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
                        "Select other additional services",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Contenerwidget(
                      nameApp: 'Website Design',
                      Price: 'QR 1999',
                      BPrice: '     ', //'                '
                      ImagePath: 'assets/images/img_9.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Data Migration',
                      Price: 'QR 299',
                      BPrice: '      ', //'                '
                      ImagePath: 'assets/images/img_10.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Content Management',
                      Price: 'QR 1999',
                      BPrice: '', //'                '
                      ImagePath: 'assets/images/img_11.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Graphic Design',
                      Price: 'QR 299',
                      BPrice: '         ', //'                '
                      ImagePath: 'assets/images/img_12.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Contenerwidget(
                      nameApp: 'Accounting',
                      Price: 'QR 299',
                      BPrice: '      ', //'                '
                      ImagePath: 'assets/images/img_13.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
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
    ;
  }
}
