import 'package:flutter/material.dart';
import 'package:muslim_fortress/shared/components/custom_text.dart';

class CustomHomeIcon extends StatelessWidget {
  const CustomHomeIcon({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 130,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 5,
              color: Colors.black38,
            )
          ]),
      child: Column(
        children: [
          Icon(
            icon,
            size: 25,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: text,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
