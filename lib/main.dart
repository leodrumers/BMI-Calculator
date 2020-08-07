import 'package:flutter/material.dart';

import 'file:///C:/Users/Leo/Documents/flutter/appbrewery/bmi_calculator/lib/constans/constans.dart';

import 'constans/string_constans.dart';
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
