import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_fortress/view/home/home.dart';
import '../shared/my_bindings/my_bindings.dart';

void main(){
  runApp( const MuslimFortress());
}

class MuslimFortress extends StatelessWidget {
  const MuslimFortress({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Muslim's Fortress",
      initialBinding: MyBindings(),
      home: const Home(),
    );
  }
}