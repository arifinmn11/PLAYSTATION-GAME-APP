import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';
import 'package:playstation_games_app/route/route.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('theme').listenable(),
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Playstation Games App',
          theme: value.get('dark', defaultValue: false) ? darkMode : lightMode,
          initialRoute: routeBottomNavigation,
          onGenerateRoute: generateRoute,
        );
      },
    );
  }
}