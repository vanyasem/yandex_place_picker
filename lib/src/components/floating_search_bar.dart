import 'package:flutter/material.dart';

import 'package:yandex_place_picker/assets.dart';

class FloatingSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        ImageAssets.placeDefault,
        package: 'yandex_place_picker',
      ),
    );
  }

}
