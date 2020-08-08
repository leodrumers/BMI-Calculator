import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = const Color(0xFF0A0E21);
const kInactiveColor = const Color(0xFA111328);
const kActiveColor = const Color(0xFF1D1E33);
const kAccentColor = const Color(0xFFEB1555);
const kInactiveSlider = const Color(0xFFA11433);
const kActiveSlider = const Color(0x29EB1555);

final ThemeData appTheme = _customThemeDark();

ThemeData _customThemeDark() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: _buildTextTheme(base.textTheme),
    sliderTheme: SliderThemeData(
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
      thumbColor: kAccentColor,
      disabledThumbColor: Colors.white30,
      overlayColor: kActiveSlider,
      activeTrackColor: Colors.white,
      inactiveTrackColor: Colors.white30,
    ),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: TextStyle(fontWeight: FontWeight.bold),
    headline2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w900,
    ),
    bodyText1: TextStyle(
      fontSize: 24,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 18.0,
      color: Colors.white,
    ),
  );
}
