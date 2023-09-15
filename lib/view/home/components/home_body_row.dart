import 'package:flutter/material.dart';
import 'package:muslim_fortress/view/home/components/custom_home_icon.dart';

class HomeBodyRow extends StatelessWidget {
  const HomeBodyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomHomeIcon(
              icon: Icons.sunny,
              text: "أذكار الصباح",
            ),
            SizedBox(
              width: 20,
            ),
            CustomHomeIcon(
              icon: Icons.dark_mode_outlined,
              text: "أذكار المساء",
            ),
            SizedBox(
              width: 20,
            ),
            CustomHomeIcon(
              icon: Icons.sunny,
              text: "أدعية مأثورة",
            ),
            SizedBox(
              width: 20,
            ),
            CustomHomeIcon(
              icon: Icons.manage_search,
              text: "سيرة الرسول",
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
