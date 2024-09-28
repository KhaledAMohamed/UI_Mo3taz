
import 'package:authentication/views/Confirmation.dart';

import 'package:flutter/material.dart';
void main(){
  runApp(const Authen());
}

class Authen extends StatelessWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(


      debugShowCheckedModeBanner: false,
      home: Confirmation(),
    );
  }
}
