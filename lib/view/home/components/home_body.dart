import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_fortress/view/home/components/custom_home_icon.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: Get.height * 0.03,
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(width: Get.width),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
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
            ),
          ],
        ),
      ),
    );
  }
}
