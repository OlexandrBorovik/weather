import 'package:wheather/data/api/api_util.dart';
import 'package:wheather/data/api/service/weather_service.dart';

class ApiModule {
  static late ApiUtil _apiUtil;

  static ApiUtil apiUtil(){
    if (_apiUtil==null){
      _apiUtil = ApiUtil(WeatherService());
    }
    return _apiUtil;
  }
}