import 'package:flutter/material.dart';

import 'src/picker_screen.dart';
import 'src/place.dart';

export 'src/place.dart';

class YandexPlacePicker {

  static Future<Place> selectPlace(BuildContext context) async {
    return Navigator.push(
      context,
      MaterialPageRoute<Place>(builder: (BuildContext context) => PickerScreen()),
    );
  }
}
