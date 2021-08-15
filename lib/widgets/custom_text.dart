import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String text;

  CustomText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 19
      ),
    );
  }
}
