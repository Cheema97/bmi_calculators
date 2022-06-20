// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'input_page.dart';

class Buttombutton extends StatelessWidget {
  Buttombutton({required this.ontap, required this.buttonTittle});

  final VoidCallback ontap;
  final String buttonTittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTittle,
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        color: bottomconatinercolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomconatinerheight,
      ),
    );
  }
}
