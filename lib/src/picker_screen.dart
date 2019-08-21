import 'package:flutter/material.dart';

import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:yandex_place_picker/assets.dart';

import 'components/floating_pin.dart';
import 'components/floating_search_bar.dart';
import 'confirm_place_dialog.dart' as confirm_dialog;
import 'lang/picker_localizations.dart';

class PickerScreen extends StatefulWidget {

  @override
  _PickerScreenState createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  YandexMapController _yandexMapController;
  static const Point _point = Point(latitude: 59.945933, longitude: 30.320045);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PickerLocalizations>(
      future: PickerLocalizations.load(context),
      builder: (BuildContext context, AsyncSnapshot<PickerLocalizations> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Container(),
          );
        } else {
          final PickerLocalizations pickerLocalizations = snapshot.data;
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
              FloatingSearchBar(pickerLocalizations),
              FloatingActionButton(
                onPressed: () {
                  confirm_dialog.showConfirmationDialog(this.context, pickerLocalizations);
                },
                child: Icon(Icons.gps_fixed),
              ),
              FloatingPin(),
            ],
          );
        }
      },
    );
  }
}
