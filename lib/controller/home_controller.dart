import 'dart:convert';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> adhkarList = [];
  GlobalKey scaffoldKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
    getJsonData();
    // getData();
  }

  getJsonData() async {
    var data = await rootBundle.loadString("assets/json/hisn_almuslim.json");

    var jsonDecoded = json.decode(data);
    // log(jsonDecoded);
    int count = 0;
    jsonDecoded.forEach((key, value) {
      adhkarList.add({"$count": key, "body": value});
      // print(adhkarList);
      count++;
    });
    update();
  }

//* To Do Flutter Package
  List<int> list = [];
  int count = 0;
  loadTenData(int index) async {
    if (index == list.length - 1) {
      await Future.delayed(const Duration(seconds: 1));
      index += 1;
      for (var i = 1; i <= 10; i++) {
        list.add(index + i);
      }
      update();
    }
  }

//* Test Multithreads
  bool isLoading = false;
  
  getData() async {
    isLoading = true;
    update();
//* Here to Create New Thread
   await Isolate.spawn((message) async {
    print("At Isolate ;)");
    await Future.delayed(const Duration(seconds: 5), () => print("5 seconds is done"));
   },"message" );
   
    await Future.delayed(
        const Duration(seconds: 2), () => print('2 seconds is done'));
    isLoading = false;

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
