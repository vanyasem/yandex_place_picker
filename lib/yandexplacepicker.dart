import 'dart:async';

import 'package:flutter/services.dart';

class YandexPlacePicker {
  static const MethodChannel _channel =
      const MethodChannel('yandexplacepicker');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
