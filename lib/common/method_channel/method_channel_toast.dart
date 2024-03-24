import 'dart:io';
import 'package:flutter/services.dart';

methodChannelToast(String message) {
  if (Platform.isAndroid) {
    var callToastChannel = const MethodChannel('playstation_games_app');
    callToastChannel.invokeMethod("getToast", {'message': message});
  } else {
    var callToastChannel = const MethodChannel('playstation_games_app');
    callToastChannel.invokeMethod("getToast", {'message': message});
  }
}
