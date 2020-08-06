import 'package:flutter/material.dart';

import '../constans.dart';

class CalculateButton extends StatelessWidget {
  final Function onPress;
  const CalculateButton({
    Key key,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonTheme(
        height: 70,
        child: RaisedButton(
          onPressed: onPress,
          color: kAccentColor,
          child: Text(
            'Calculate',
            style: Theme.of(context).textTheme.headline5,
          ),
          disabledColor: Colors.white,
        ),
      ),
    );
  }
}
