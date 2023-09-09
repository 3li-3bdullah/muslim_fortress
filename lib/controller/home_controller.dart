import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<dynamic> adhkarList = [];

  @override
  void onInit() {
    super.onInit();
    getJsonData();
  }

  getJsonData() async {
    await Future.delayed(const Duration(seconds: 3));

    final azkarData = await rootBundle.loadString("assets/json/adhkar.json");
    adhkarList = jsonDecode(azkarData);
    update();
  }
}
