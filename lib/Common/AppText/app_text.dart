import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const CustomText(
      {super.key,
      required this.title,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w500,
      this.size = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
