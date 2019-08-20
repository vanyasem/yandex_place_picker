import 'package:flutter/material.dart';

import 'package:yandex_place_picker/yandexplacepicker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final YandexPlacePicker _yandexPlacePicker = YandexPlacePicker();
  Place _place;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yandex Place Picker'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Show Picker'.toUpperCase()),
                onPressed: () async {
                  Place place = await YandexPlacePicker.selectPlace();
                  setState(() {
                    _place = place;
                  });
                },
              ),
              Text(
                _place == null ? 'No place selected.' : _place.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
