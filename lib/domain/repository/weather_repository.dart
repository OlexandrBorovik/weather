import 'package:flutter/cupertino.dart';

import '../model/weaher.dart';

abstract class WeatherRepository{
  Future<Weather> getWeather({
    @required String city
});
}