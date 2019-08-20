import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class Place {
  const Place({@required this.name, @required this.descriptionText, @required this.point});

  final String name;
  final String descriptionText;
  final Point point;

  @override
  String toString() =>
      '''
      $name
      $descriptionText
      ${point.latitude}, ${point.longitude}
      ''';
}
