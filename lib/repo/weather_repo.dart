import 'dart:convert';

import 'package:emersion_media_exam/core/model/day/weather_day_model.dart';
import 'package:emersion_media_exam/core/model/forecast/weather_forecast_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class WeatherRepo {
  Future<List<WeatherDayModel>> getWeatherDay();
  Future<WeatherForecastModel> getWeatherForecastModel();
}

@Injectable(as: WeatherRepo)
@lazySingleton
class WeatherRepoImpl extends WeatherRepo {
  @override
  Future<List<WeatherDayModel>> getWeatherDay() async {
    final dateNow = DateTime.now();
    var year = dateNow.year;
    var day = dateNow.day;
    var month = dateNow.month;

    final weatherDayUrl =
        'https://www.metaweather.com/api/location/1105779/$year/$month/$day/';

    debugPrint('WeatherRepoImpl getWeatherDay weatherDayUrl = $weatherDayUrl');
    try {
      final weatherURI = Uri.tryParse(weatherDayUrl)!;
      final response = await http.get(weatherURI);

      Iterable l = json.decode(response.body);
      List<WeatherDayModel> listWeatherDayModel = List<WeatherDayModel>.from(
          l.map((model) => WeatherDayModel.fromJson(model)));

      // for (var item in listWeatherDayModel) {
      //   if (item.id == weatherId) {
      //     return item;
      //   }
      // }

      return listWeatherDayModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<WeatherForecastModel> getWeatherForecastModel() async {
    const weatherForecastUrl =
        'https://www.metaweather.com/api/location/1105779/';

    debugPrint('WeatherRepoImpl getWeatherForecastModel');
    try {
      final forecastURI = Uri.tryParse(weatherForecastUrl)!;
      final response = await http.get(forecastURI);

      var weatherForecastModel =
          WeatherForecastModel.fromJson(json.decode(response.body));

      return weatherForecastModel;
    } catch (e) {
      rethrow;
    }
  }
}
