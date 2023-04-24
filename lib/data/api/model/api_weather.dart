
class ApiWeather {
  final num temperature;
  final String description;
  final num wind;

ApiWeather.fromApi(Map<String,dynamic>map)
    :temperature = map['results']['air'],
      description = map['results']['full'],
      wind = map['results']['wind'];
}