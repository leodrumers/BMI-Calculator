import 'package:bmi_calculator/location/services/weather.dart';
import 'package:bmi_calculator/location/views/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WeatherLoadingScreen extends StatefulWidget {
  final String title;

  const WeatherLoadingScreen({Key key, this.title}) : super(key: key);

  @override
  _WeatherLoadingScreenState createState() => _WeatherLoadingScreenState();
}

class _WeatherLoadingScreenState extends State<WeatherLoadingScreen> {
  double lon;
  double lat;

  void getWeather() async {
    var weatherData = await WeatherModel().getWeatherLocation();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        return WeatherScreen(
          locationWeather: weatherData,
        );
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: SpinKitChasingDots(
              color: Colors.white,
              size: 100,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('Loading data, please wait...'),
          ),
        ],
      ),
    );
  }
}
