import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'assets.dart';

class YandexPlacePicker extends StatefulWidget {

  @override
  _YandexPlacePickerState createState() => _YandexPlacePickerState();
}

class _YandexPlacePickerState extends State<YandexPlacePicker> {
  YandexMapController _yandexMapController;
  static const Point _point = Point(latitude: 59.945933, longitude: 30.320045);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child:
          YandexMap(
            onMapCreated: (YandexMapController controller) async {
              _yandexMapController = controller;
              await _yandexMapController.showUserLayer(iconName: ImageAssets.icLocationGreen);
              await _yandexMapController.move(
                  point: _point,
                  animation: const MapAnimation(smooth: true, duration: 2.0)
              );
            },
          ),
        ),
      ],
    );
  }
}
