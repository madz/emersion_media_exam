part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required WeatherForecastModel? weatherForecastModel,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isFailure,
    required String info,
  }) = _WeatherState;
  const WeatherState._();

  factory WeatherState.empty() => const WeatherState(
        weatherForecastModel: null,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory WeatherState.loading() => const WeatherState(
        weatherForecastModel: null,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory WeatherState.failure({required String? info}) => WeatherState(
        weatherForecastModel: null,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info!,
      );

  factory WeatherState.success({
    required WeatherForecastModel? weatherForecastModel,
    required String? info,
  }) {
    return WeatherState(
      weatherForecastModel: weatherForecastModel,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
      info: info!,
    );
  }
}
