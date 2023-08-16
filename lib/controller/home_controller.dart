import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{


  void onInit() {
    super.onInit();
    getJsonData();
  }

  getJsonData() async {
    await Future.delayed(const Duration(seconds: 3));

    final azkarData = await rootBundle.loadString("assets/json/adhkar.json");
    final decodedData = jsonDecode(azkarData);

    debugPrint(azkarData);

    debugPrint(decodedData);
    
    
  }

}