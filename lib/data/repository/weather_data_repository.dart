import 'package:wheather/data/api/api_util.dart';
import 'package:wheather/domain/model/weather.dart';
import 'package:wheather/domain/repository/weather_repository.dart';

class WeatherDataRepository extends WeatherRepository{
  final ApiUtil _apiUtil;

  WeatherDataRepository(this._apiUtil);

  @override
  Future<Weather> getWeather({  required String city}) {

    return _apiUtil.getWeather(cityName: city);
  }
}