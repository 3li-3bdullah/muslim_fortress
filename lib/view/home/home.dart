import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class Home extends GetWidget<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: Colors.yellow.shade100,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: const Text(
            "حصن المسلم",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 25,
              )),
        ),
        endDrawer: Drawer(
          child: Container(
            color: Colors.brown,
            width: 200,
          ),
        ),
        body: Container());
  }
}
