import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<dynamic> adhkarList = [];
  GlobalKey scaffoldKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
    getJsonData();
    // getData();
  }

  getJsonData() async {
    adhkarList = await rootBundle
        .loadString("assets/json/adhkar.json")
        .then((value) => jsonDecode(value));
    update();
  }

  // getData() async {
  //   // const url = "http://localhost:3000/api/employees/list";
  //   try {

  //   http.Response response = await http.get(Uri.http('localhost:3000','/api/employees/list'));

  //   var body = json.decode(response.body);
  //   print(body);
  //   } catch (e) {
  //     print("The Error is : $e");
  //   }
  // }
}
