import 'package:bmi_calculator/location/views/loading_screen.dart';
import 'package:bmi_calculator/utilities/constans.dart';
import 'package:bmi_calculator/utilities/string_constans.dart';
import 'package:flutter/material.dart';

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
      home: WeatherLoadingScreen(title: kLocationApp),
    );
  }
}
