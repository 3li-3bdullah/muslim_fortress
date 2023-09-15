import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:muslim_fortress/shared/components/constants.dart';
import 'package:muslim_fortress/shared/components/custom_text.dart';
import 'package:muslim_fortress/view/home/components/custom_appbar.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: kbackgroundColor,
        child: CustomText(text: text, fontWeight: FontWeight.bold,color: Colors.black,),
      ),
    );
  }
}