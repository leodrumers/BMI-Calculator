import 'package:flutter/material.dart';

import '../constans/constans.dart';

class CalculateButton extends StatelessWidget {
  final Function onPress;
  final String text;
  const CalculateButton({
    Key key,
    this.onPress,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 70,
      child: RaisedButton(
        onPressed: onPress,
        color: kAccentColor,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
        disabledColor: Colors.blueGrey,
      ),
    );
  }
}
