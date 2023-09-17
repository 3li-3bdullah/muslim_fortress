import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_fortress/shared/components/constants.dart';
import 'package:muslim_fortress/shared/components/custom_text.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key, required this.texts});
  final List texts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: kbackgroundColor,
        alignment: Alignment.center,
        child: Directionality(
          textDirection: TextDirection.rtl, 
          child: ListView.builder(
              itemCount: texts.length,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: CustomText(
                      text: texts[index]['text'],
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
        ),
      ),
    );
  }
}
