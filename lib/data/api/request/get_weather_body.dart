
import 'dart:html';

import 'package:flutter/cupertino.dart';

class GetWeatherBody{
  final String cityName;


  GetWeatherBody({
    required this.cityName
  });
  Map<String,dynamic> toApi(){
    return{
      'q':cityName,
      'appid':'a3ae89eee5b44c664a6e34f612cc4bf7'
    };
  }

}