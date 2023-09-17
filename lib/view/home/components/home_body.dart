import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_fortress/controller/home_controller.dart';
import 'package:muslim_fortress/shared/components/custom_text.dart';
import 'package:muslim_fortress/view/home/components/home_body_row.dart';

import '../reading_page.dart';

class HomeBody extends GetWidget<HomeController> {
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
            const HomeBodyRow(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GetBuilder<HomeController>(
                builder: (controller) => ListView.builder(
                  itemCount: controller.adhkarList.length,
                  itemBuilder: (_, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () => Get.to(() => ReadingPage(
                            texts: controller.adhkarList[index]['array'])),
                        child: Row(
                          children: [
                            CustomText(
                                text: controller.adhkarList[index]['category'],
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            const Spacer(),
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border(
                                  bottom: BorderSide(color: Colors.brown),
                                  top: BorderSide(color: Colors.brown),
                                  left: BorderSide(color: Colors.brown),
                                  right: BorderSide(color: Colors.brown),
                                ),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.brown,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
