part of 'weather_detail_cubit.dart';

@freezed
class WeatherDetailState with _$WeatherDetailState {
  const factory WeatherDetailState({
    required List<WeatherDayModel>? listWeatherDayModel,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isFailure,
    required String info,
  }) = _WeatherDetailState;
  const WeatherDetailState._();

  factory WeatherDetailState.empty() => const WeatherDetailState(
        listWeatherDayModel: null,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory WeatherDetailState.loading() => const WeatherDetailState(
        listWeatherDayModel: null,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory WeatherDetailState.failure({required String? info}) =>
      WeatherDetailState(
        listWeatherDayModel: null,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info!,
      );

  factory WeatherDetailState.success({
    required List<WeatherDayModel>? listWeatherDayModel,
    required String? info,
  }) {
    return WeatherDetailState(
      listWeatherDayModel: listWeatherDayModel,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
      info: info!,
    );
  }
}
