import 'package:clima/utilities/constants.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const String owmApiKey = 'c731b30131de9a274df0974e0eba78d4';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    location = Location();
    await location.getLocation();
    var url =
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.lat}&lon=${location.long}&appid=$owmApiKey&units=metric';
    final net = NetworkingHelper(url);
    var data = await net.getData();
    return data;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    var url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$owmApiKey&units=metric';
    final net = NetworkingHelper(url);
    var data = await net.getData();
    return data;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
