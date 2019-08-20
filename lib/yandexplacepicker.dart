import 'package:flutter/material.dart';

import 'src/models/place.dart';
import 'src/picker_screen.dart';

export 'src/models/place.dart';

class YandexPlacePicker {

  static Future<Place> selectPlace(BuildContext context) async {
    return Navigator.push(
      context,
      MaterialPageRoute<Place>(builder: (BuildContext context) => PickerScreen()),
    );
  }
}
