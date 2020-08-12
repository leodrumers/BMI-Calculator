import 'package:bmi_calculator/location/services/location.dart';

import '../../api_keys.dart';
import 'networking.dart';

class WeatherModel {
  Future<dynamic> getWeatherLocation() async {
    Location location = Location();
    await location.getLocation();

    String url =
        'http://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$kWeatherApiKey';
    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
