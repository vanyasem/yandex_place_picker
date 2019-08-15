import 'package:flutter/material.dart';
import 'dart:async';

import 'package:yandex_place_picker/yandexplacepicker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yandex Place Picker'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Show Picker'.toUpperCase()),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
