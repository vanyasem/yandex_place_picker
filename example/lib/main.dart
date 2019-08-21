import 'package:flutter/material.dart';

import 'package:yandex_place_picker/yandexplacepicker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'theme/style.dart' as style;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Place _place;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: style.pickerTheme(),
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en'), // English
        Locale('ru'), // Russian
      ],
      home: Builder(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text('Yandex Place Picker'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: const Text('SHOW PICKER'),
                  onPressed: () async {
                    final Place place = await YandexPlacePicker.selectPlace(context);
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
      ),
    );
  }
}
