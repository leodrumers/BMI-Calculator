import 'package:bmi_calculator/api_keys.dart';
import 'package:bmi_calculator/location/services/networking.dart';
import 'package:bmi_calculator/location/views/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/location.dart';

class LocationScreen extends StatefulWidget {
  final String title;

  const LocationScreen({Key key, this.title}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  double lon;
  double lat;

  void getWeather() async {
    Location location = Location();
    await location.getLocation();
    lon = location.longitude;
    lat = location.latitude;

    String url =
        'http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$kWeatherApiKey';
    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData();

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        locationWeather: weatherData,
      );
    }));
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
