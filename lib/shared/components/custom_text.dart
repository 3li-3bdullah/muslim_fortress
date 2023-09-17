import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.color = Colors.white,
      required this.fontWeight,
      this.maxLines = 1,
      this.fontSize = 18});
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,overflow: TextOverflow.ellipsis,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
