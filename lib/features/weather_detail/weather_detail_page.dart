import 'package:emersion_media_exam/core/model/day/weather_day_model.dart';
import 'package:emersion_media_exam/features/weather_detail/cubit/weather_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherDetailPage extends StatelessWidget {
  const WeatherDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Detail')),
      body: BlocBuilder<WeatherDetailCubit, WeatherDetailState>(
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
            var listWeatherDayModel = state.listWeatherDayModel;
            return Center(
              child: ListView(
                children: _getWeatherDetailItems(
                  listWeatherDayModel,
                ),
              ),
            );
          }
        },
      ),
    );
  }

  List<Widget> _getWeatherDetailItems(
    List<WeatherDayModel>? listWeatherDayModel,
  ) {
    List<Widget> items = [];

    if (listWeatherDayModel != null && listWeatherDayModel.isNotEmpty) {
      for (var weatherDayModel in listWeatherDayModel) {
        var weatherStateName =
            weatherStateNameValues.reverse[weatherDayModel.weatherStateName];
        var weatherStateAbbr =
            weatherStateAbbrValues.reverse[weatherDayModel.weatherStateAbbr];
        var theTemp = weatherDayModel.theTemp;

        debugPrint('WeatherDetailPage weatherStateName = $weatherStateName');
        debugPrint('WeatherDetailPage weatherStateAbbr = $weatherStateAbbr');
        debugPrint('WeatherDetailPage theTemp = $theTemp');

        items.add(
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  weatherStateName!,
                ),
              ),
              Image.network(
                'https://www.metaweather.com/static/img/weather/png/$weatherStateAbbr.png',
                fit: BoxFit.cover,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${theTemp?.toStringAsFixed(2)}',
                ),
              ),
              const Divider()
            ],
          ),
        );
      }
    }
    return items;
  }
}
