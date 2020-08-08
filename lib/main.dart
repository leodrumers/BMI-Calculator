import 'package:bmi_calculator/utilities/constans.dart';
import 'package:bmi_calculator/utilities/string_constans.dart';
import 'package:flutter/material.dart';

import 'bmi_calculator/views/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kBMIApp,
      theme: appTheme,
      home: InputPage(title: kBMIApp),
    );
  }
}
