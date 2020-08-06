import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/string_constans.dart';
import 'package:flutter/material.dart';

import 'views/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: appTheme,
      home: InputPage(title: kAppName),
    );
  }
}
