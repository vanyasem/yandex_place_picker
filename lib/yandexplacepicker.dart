import 'package:flutter/services.dart';

class YandexPlacePicker {
  static const MethodChannel _channel = MethodChannel('yandexplacepicker');

  static dynamic get launchPicker async {
    final dynamic result = await _channel.invokeMethod('launch_picker');
    return result;
  }
}
