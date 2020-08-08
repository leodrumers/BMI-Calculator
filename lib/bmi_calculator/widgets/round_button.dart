import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  final Function onLongPress;

  const RoundButton({Key key, this.icon, this.onPress, this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      onLongPress: onLongPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.white30,
    );
  }
}
