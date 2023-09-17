import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_fortress/shared/components/constants.dart';
import 'package:muslim_fortress/shared/components/custom_text.dart';
import 'package:muslim_fortress/shared/components/size_config.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key, required this.texts, required this.adhkars});
  final List texts;
  final Map adhkars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
          backgroundColor: kmainColor,
          centerTitle: true,
          title: CustomText(
              text: adhkars['category'], fontWeight: FontWeight.bold),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.copy,
                  color: Colors.white,
                ))
          ],
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ))),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: CustomText(
                  text: texts[0]['text'],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: kmainColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * 0.5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kmainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const CustomText(
                        text: "0",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * 0.5,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: kmainColor,
                      ),
                      child: const CustomText(
                        text: "الذكر 1 من 1",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
