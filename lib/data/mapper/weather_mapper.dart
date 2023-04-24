
import 'package:wheather/domain/model/weather.dart';

import '../api/model/api_weather.dart';

class WeatherMapper {
  static Weather fromApi (ApiWeather weather){
    return Weather(
    temperature: weather.temperature.toInt(),
    description: weather.description.toString(),
    wind:weather.wind.floorToDouble(),
    );
  }
}