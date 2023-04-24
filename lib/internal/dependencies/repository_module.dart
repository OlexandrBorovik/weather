
import 'package:wheather/data/repository/weather_data_repository.dart';
import 'package:wheather/domain/repository/weather_repository.dart';
import 'package:wheather/internal/dependencies/api_module.dart';

class RepositoryModule {
  static late WeatherRepository _weatherRepository;

  static WeatherRepository weatherRepository(){
    if (weatherRepository==null){
      _weatherRepository = WeatherDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _weatherRepository;
  }
}