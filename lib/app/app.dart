import 'package:emersion_media_exam/core/di/injector.dart';
import 'package:emersion_media_exam/features/weather/cubit/weather_cubit.dart';
import 'package:emersion_media_exam/features/weather/weather_page.dart';
import 'package:emersion_media_exam/features/weather_detail/cubit/weather_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherCubit>(
          create: (BuildContext context) =>
              getIt<WeatherCubit>()..getWeatherForecast(),
        ),
        BlocProvider<WeatherDetailCubit>(
          create: (BuildContext context) => getIt<WeatherDetailCubit>(),
        ),
      ],
      child: MaterialApp(
        home: WeatherPage(),
      ),
    );
  }
}
