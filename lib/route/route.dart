import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstation_games_app/presentation/bottom_navigation/page/page.dart';
import '../common/common.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routeBottomNavigation:
      Widget builder = const BottomNavigationPage();
      if (Platform.isIOS) {
        return CupertinoPageRoute(builder: (context) => builder);
      } else {
        return MaterialPageRoute(builder: (context) => builder);
      }
  }

  methodChannelToast("path ${settings.name} not found");

  if (Platform.isIOS) {
    return CupertinoPageRoute(builder: (context) => const SizedBox.shrink());
  } else {
    return MaterialPageRoute(builder: (context) => const SizedBox.shrink());
  }
}