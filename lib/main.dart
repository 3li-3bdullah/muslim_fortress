import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_fortress/shared/components/size_config.dart';
import 'package:muslim_fortress/view/home/home.dart';
import 'package:muslim_fortress/view/home/test_canvas.dart';
import 'package:muslim_fortress/view/test/load_page.dart';
import 'package:muslim_fortress/view/test/test_multithreads.dart';
import '../shared/my_bindings/my_bindings.dart';

void main() {
  runApp(const MuslimFortress());
}

class MuslimFortress extends StatelessWidget {
  const MuslimFortress({super.key});

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return GetMaterialApp(
      title: "Muslim's Fortress",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialBinding: MyBindings(),
      home: const TestMulti(),
    );
  }
}
