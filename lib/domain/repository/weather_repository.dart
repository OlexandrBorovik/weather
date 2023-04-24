import 'package:flutter/cupertino.dart';

import '../model/weather.dart';

abstract class WeatherRepository{
  Future<Weather> getWeather({
    required String city
});
}