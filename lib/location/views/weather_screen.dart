import 'package:bmi_calculator/utilities/main_drawer.dart';
import 'package:bmi_calculator/utilities/string_constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  final locationWeather;
  WeatherScreen({this.locationWeather});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  double temp;
  String weatherDescription;
  String cityName;
  String iconId;

  @override
  void initState() {
    super.initState();
    updateUi(widget.locationWeather);
  }

  void updateUi(dynamic weatherData) {
    cityName = weatherData['name'] as String;
    temp = weatherData['main']['temp'] as double;
    temp = temp - 273.15;
    weatherDescription = weatherData['weather'][0]['main'] as String;
    iconId = weatherData['weather'][0]['icon'] as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAB7A7),
        title: Text(kLocationApp),
      ),
      drawer: MainAppDrawer(),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF5F689F)),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                      'http://openweathermap.org/img/wn/$iconId@2x.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16, top: 16),
                        child: Column(
                          children: [
                            Text(
                              temp.toString(),
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text(weatherDescription.toLowerCase())
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Image.network(
                    'http://openweathermap.org/img/wn/$iconId@2x.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFFFBE9DF),
                  ),
                  Text(
                    cityName.toUpperCase(),
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
