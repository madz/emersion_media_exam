import 'package:bloc/bloc.dart';
import 'package:emersion_media_exam/core/model/forecast/weather_forecast_model.dart';
import 'package:emersion_media_exam/repo/weather_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

@lazySingleton
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(
    this._weatherRepo,
  ) : super(WeatherState.empty());

  final WeatherRepo _weatherRepo;

  void getWeatherForecast() async {
    emit(WeatherState.loading());

    try {
      var weatherForecastModel = await _weatherRepo.getWeatherForecastModel();

      emit(
        WeatherState.success(
          weatherForecastModel: weatherForecastModel,
          info: 'Success',
        ),
      );
    } catch (e) {
      emit(WeatherState.failure(info: e.toString()));
    }
  }
}
