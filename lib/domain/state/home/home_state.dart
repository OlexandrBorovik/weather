import 'package:wheather/domain/model/weather.dart';
import 'package:wheather/domain/repository/weather_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;
abstract class HomeStateBase with Store {
  HomeStateBase(this._weatherRepository);
  final WeatherRepository _weatherRepository;

  @observable
  Weather weather;

  @observable
  bool isLoading =false;

  @action
  Future<void> getWeather ({
    required String city,
})async{
    isLoading= true;
    final data = await _weatherRepository.getWeather(city: city);
    weather = data;
    isLoading = false
  }
}