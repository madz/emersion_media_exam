import 'package:emersion_media_exam/app/app.dart';
import 'package:emersion_media_exam/core/di/injector.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Register all the models and services before the app starts
  configureDependencies();

  runApp(const App());
}
