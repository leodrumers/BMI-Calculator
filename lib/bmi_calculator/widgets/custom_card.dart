import 'package:bmi_calculator/utilities/constans.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    this.color = kActiveColor,
    this.child,
    this.onTap,
    this.onDoubleTap,
  });
  final Color color;
  final Widget child;
  final Function onTap;
  final Function onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 8.0,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        color: color,
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: child,
        ),
      ),
    );
  }
}
