import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './components/home_body.dart';
import './components/custom_drawer.dart';
import './components/custom_appbar.dart';

import '../../controller/home_controller.dart';

class Home extends GetWidget<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: Colors.yellow.shade100,
        appBar: customAppBar(),
        endDrawer: const CustomDrawer(),
        body: const HomeBody());
  }

  
}
