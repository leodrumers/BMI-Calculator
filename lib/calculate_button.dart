import 'package:flutter/material.dart';

import 'constans.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonTheme(
        height: 70,
        child: RaisedButton(
          onPressed: () {},
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
