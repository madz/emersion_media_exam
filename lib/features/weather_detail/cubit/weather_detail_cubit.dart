import 'package:bloc/bloc.dart';
import 'package:emersion_media_exam/core/model/day/weather_day_model.dart';
import 'package:emersion_media_exam/repo/weather_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_detail_cubit.freezed.dart';
part 'weather_detail_state.dart';

@lazySingleton
class WeatherDetailCubit extends Cubit<WeatherDetailState> {
  WeatherDetailCubit(
    this._weatherRepo,
  ) : super(WeatherDetailState.empty());

  final WeatherRepo _weatherRepo;

  void getWeatherDay() async {
    emit(WeatherDetailState.loading());

    try {
      var listWeatherDayModel = await _weatherRepo.getWeatherDay();

      emit(
        WeatherDetailState.success(
          listWeatherDayModel: listWeatherDayModel,
          info: 'Success',
        ),
      );
    } catch (e) {
      emit(WeatherDetailState.failure(info: e.toString()));
    }
  }
}
