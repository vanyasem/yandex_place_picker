import 'package:flutter/material.dart';

import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:yandex_place_picker/assets.dart';

import 'components/floating_pin.dart';

class PickerScreen extends StatefulWidget {

  @override
  _PickerScreenState createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  YandexMapController _yandexMapController;
  static const Point _point = Point(latitude: 59.945933, longitude: 30.320045);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              child:
              YandexMap(
                onMapCreated: (YandexMapController controller) async {
                  _yandexMapController = controller;
                  await _yandexMapController.showUserLayer(iconName: ImageAssets.userLocation);
                  await _yandexMapController.move(
                      point: _point,
                      animation: const MapAnimation(smooth: true, duration: 2.0)
                  );
                },
              ),
            ),
          ]
        ),
        FloatingPin(),
      ],
    );
  }
}
