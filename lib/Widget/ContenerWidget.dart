import 'package:authentication/core/style/Const.dart';
import 'package:flutter/material.dart';

class Contenerwidget extends StatefulWidget {
  Contenerwidget(
      {required this.ImagePath, required this.nameApp, required this.Price, required this.BPrice});

  String ImagePath;
  String nameApp;
  String BPrice;
  String Price;

  @override
  State<Contenerwidget> createState() => _ContenerwidgetState();
}

class _ContenerwidgetState extends State<Contenerwidget> {
  bool isChecked = false;
Color? scolor =thColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 108,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: scolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage(
                widget.ImagePath,
              ),
              width: 50,
              height: 50,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.nameApp,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow:
                    TextOverflow.ellipsis, // لمنع النص من تجاوز الحدود
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    widget.BPrice,
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                    ),
                  ),
                  Checkbox(

                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                        if(value == true){
                        scolor=Colors.orange[100];
                        }
                        else
                       scolor=thColor;
                      });
                    },
                    value: isChecked,
                  ),
                ],
              ),
              Container(
                height: 1,
                width: 230,
                color: Colors.black,
              ),
              Row(
                children: [
                  Text(
                    '3 months',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    widget.Price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
