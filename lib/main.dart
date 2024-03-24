import 'package:flutter/material.dart';
import 'package:playstation_games_app/app.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';
import 'package:playstation_games_app/dependencies/dependencies_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('theme');

  initializeDependenciesInjection();

  runApp(const App());
}
