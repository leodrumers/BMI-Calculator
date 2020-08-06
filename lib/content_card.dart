import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.title, this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
