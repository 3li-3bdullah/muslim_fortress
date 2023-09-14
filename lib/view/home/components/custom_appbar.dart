// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

import '../../../shared/components/custom_text.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.brown,
    centerTitle: true,
    title: const CustomText(
      text: "حصن المسلم",
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search_rounded,
          color: Colors.white,
          size: 25,
        )),
  );
}
