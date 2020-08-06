import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/views/result_page.dart';
import 'package:bmi_calculator/widgets/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/calculate_button.dart';
import '../widgets/content_card.dart';
import '../widgets/custom_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _genderSelected;
  int _height = 175;
  int _weight = 60;
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    onTap: () {
                      setState(() {
                        _genderSelected = Gender.male;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        _genderSelected == Gender.male
                            ? _genderSelected = null
                            : _genderSelected = _genderSelected;
                      });
                    },
                    color: _genderSelected == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onTap: () {
                      setState(() {
                        _genderSelected = Gender.female;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        _genderSelected == Gender.female
                            ? _genderSelected = null
                            : _genderSelected = _genderSelected;
                      });
                    },
                    color: _genderSelected == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color:
                        _genderSelected != null ? kActiveColor : kInactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Height'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              _height.toString(),
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text(
                              'cm',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: Theme.of(context).sliderTheme,
                          child: Slider(
                            value: _height.toDouble(),
                            min: 110,
                            max: 230,
                            onChanged: (double newValue) {
                              setState(() {
                                _height = newValue.toInt();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color:
                        _genderSelected != null ? kActiveColor : kInactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Weight',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          _weight.toString(),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color:
                        _genderSelected != null ? kActiveColor : kInactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Age',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          _age.toString(),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  _age--;
                                });
                              },
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CalculateButton(
                text: 'Calculate',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage()),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
