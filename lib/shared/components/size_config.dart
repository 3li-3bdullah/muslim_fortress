import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class SizeConfig {
//   static double? screenWidth;
//   static double? screenHeight;
//   static double? defaultSize;
//   static Orientation? orientation;

//   void init(BuildContext context) {
//     screenWidth = MediaQuery.of(context).size.width;
//     screenHeight = MediaQuery.of(context).size.height;
//     orientation = MediaQuery.of(context).orientation;

//     defaultSize = orientation == Orientation.landscape
//         ? screenHeight! * .024
//         : screenWidth! * .024;
//   }
// }

abstract class SizeConfig {
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static Orientation orientation = MediaQuery.of(Get.context!).orientation;
  static double defaultSize = orientation == Orientation.landscape
      ? screenHeight * .024
      : screenWidth * .024;
}
