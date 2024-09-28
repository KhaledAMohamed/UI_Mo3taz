import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText,this.onChanged,this.icon,this.width,this.height,this.Text});
  String? hintText;
  String?Text;
  double?width;
  double?height;
  IconData? icon;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {

    return   Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0x5ECCCCCC),
      ),
height: height!-10,
      width: width!-10,

      child: TextField(


        onChanged: onChanged ,

        decoration: InputDecoration(

            labelText: Text,
            hintText:hintText,
            suffixIcon:Icon(icon) ,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(

                    color: Colors.black
                )
            ),
            border:const OutlineInputBorder(


                borderSide: BorderSide(
                    color: Colors.black
                )

            )
        ),
      ),
    );
  }
}