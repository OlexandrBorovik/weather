

import 'package:flutter/cupertino.dart';
import 'package:wheather/data/api/request/get_weather_body.dart';
import 'package:wheather/data/api/service/weather_service.dart';
import 'package:wheather/data/mapper/weather_mapper.dart';

import '../../domain/model/weather.dart';

class ApiUtil{
  final WeatherService _weatherService;

  ApiUtil(this._weatherService);

  Future<Weather> getWeather ({
    required String cityName
}) async{
    final body = GetWeatherBody(cityName : cityName );
    final result = await _weatherService.getWeather(body);
    return WeatherMapper.fromApi(result);
  }
}