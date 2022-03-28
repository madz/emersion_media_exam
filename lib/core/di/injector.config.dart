// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/weather/cubit/weather_cubit.dart' as _i4;
import '../../features/weather_detail/cubit/weather_detail_cubit.dart' as _i5;
import '../../repo/weather_repo.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.WeatherRepo>(() => _i3.WeatherRepoImpl());
  gh.lazySingleton<_i4.WeatherCubit>(
      () => _i4.WeatherCubit(get<_i3.WeatherRepo>()));
  gh.lazySingleton<_i5.WeatherDetailCubit>(
      () => _i5.WeatherDetailCubit(get<_i3.WeatherRepo>()));
  return get;
}
