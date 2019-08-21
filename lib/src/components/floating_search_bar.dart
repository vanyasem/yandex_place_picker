import 'package:flutter/material.dart';

import 'package:yandex_place_picker/src/lang/picker_localizations.dart';

class FloatingSearchBar extends StatelessWidget {
  const FloatingSearchBar(this.pickerLocalizations);

  final PickerLocalizations pickerLocalizations;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SafeArea(
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            elevation: 12,
            child: ListTile(
              leading: Icon(Icons.search),
              title: Text(pickerLocalizations.pickerSearch),
            ),
          ),
        ),
      ),
    );
  }

}
