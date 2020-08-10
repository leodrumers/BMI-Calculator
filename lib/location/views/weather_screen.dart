import 'package:bmi_calculator/utilities/main_drawer.dart';
import 'package:bmi_calculator/utilities/string_constans.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kLocationApp),
      ),
      drawer: MainAppDrawer(),
      body: Center(child: Text('Hello')),
    );
  }
}
