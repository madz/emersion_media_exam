import 'package:emersion_media_exam/core/di/injector.dart';
import 'package:emersion_media_exam/core/model/forecast/weather_forecast_model.dart';
import 'package:emersion_media_exam/features/weather/cubit/weather_cubit.dart';
import 'package:emersion_media_exam/features/weather_detail/cubit/weather_detail_cubit.dart';
import 'package:emersion_media_exam/features/weather_detail/weather_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({Key? key}) : super(key: key);

  final weatherCubit = getIt<WeatherCubit>();
  final _weatherDetailCubit = getIt<WeatherDetailCubit>();

  @override
  Widget build(BuildContext context) {
    weatherCubit.getWeatherForecast();
    return Scaffold(
      appBar: AppBar(title: const Text('Weather')),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state.isSubmitting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isFailure) {
            return Center(
              child: Text(
                state.info,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            );
          } else {
            var weatherForecastModel = state.weatherForecastModel;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WeatherDetailPage()),
                );
                _weatherDetailCubit.getWeatherDay();
              },
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _getWeatherItems(
                  weatherForecastModel,
                  context,
                ),
              ),
            );
          }
        },
      ),
    );
  }

  List<Widget> _getWeatherItems(
    WeatherForecastModel? weatherForecastModel,
    BuildContext context,
  ) {
    List<Widget> items = [];

    if (weatherForecastModel != null &&
        weatherForecastModel.consolidatedWeather != null) {
      for (var item in weatherForecastModel.consolidatedWeather!) {
        final weatherStateName = item.weatherStateName;
        final weatherStateAbbr = item.weatherStateAbbr;

        debugPrint('WeatherPage weatherStateName = $weatherStateName');
        debugPrint('WeatherPage weatherStateAbbr = $weatherStateAbbr');

        items.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${item.weatherStateName}'),
                Image.network(
                  'https://www.metaweather.com/static/img/weather/png/$weatherStateAbbr.png',
                  fit: BoxFit.cover,
                  height: 150,
                ),
              ],
            ),
          ),
        );
      }
    }
    return items;
  }
}
