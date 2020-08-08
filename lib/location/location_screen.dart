import 'package:bmi_calculator/utilities/main_drawer.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  final String title;

  const LocationScreen({Key key, this.title}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainAppDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Text('Location'),
      ),
    );
  }
}
