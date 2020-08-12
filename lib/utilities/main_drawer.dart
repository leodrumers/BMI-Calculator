import 'package:bmi_calculator/bmi_calculator/views/input_page.dart';
import 'package:bmi_calculator/utilities/string_constans.dart';
import 'package:flutter/material.dart';

import '../location/views/loading_screen.dart';

class MainAppDrawer extends StatelessWidget {
  const MainAppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Flutter Examples'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text(kLocationApp),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherLoadingScreen(
                      title: kLocationApp,
                    ),
                  ));
            },
          ),
          ListTile(
            title: Text('BMI Calculator'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(
                      title: kLocationApp,
                    ),
                  ));
            },
          ),
          ListTile(title: Text('Item 3')),
        ],
      ),
    );
  }
}
