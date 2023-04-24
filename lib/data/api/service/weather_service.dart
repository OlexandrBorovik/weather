
import 'package:dio/dio.dart';
import 'package:wheather/data/api/request/get_weather_body.dart';

import '../model/api_weather.dart';

class WeatherService{
  static const _BASE_URL = 'http://api.openweathermap.org';

  final Dio _dio=Dio (
  BaseOptions(baseUrl: _BASE_URL),
  );

  Future<ApiWeather> getWeather(GetWeatherBody body)async{
    final response = await _dio.get(
      '/json',
      queryParameters: body.toApi(),
    );
    return ApiWeather.fromApi(response.data);
  }

}