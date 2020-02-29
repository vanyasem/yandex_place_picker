# Yandex Place Picker
[![pub package](https://img.shields.io/pub/v/yandex_place_picker.svg)](https://pub.dev/packages/yandex_place_picker)

Google Maps SDK used to feature a Place Picker. It was deprecated and removed. There is a custom library called [PING](https://github.com/rtchagas/pingplacepicker) that implements similar functionality using the Geocoder API. **It's expensive.**

**Yandex Place Picker** provides you with the same functionality utilising Yandex MapKit. At no cost.

<img src="images/screenshot_1.png" alt="Map expanded" width="210"/> <img src="images/screenshot_2.png" alt="Place selected" width="210"/> <img src="images/screenshot_3.png" alt="Results expanded" width="210"/> <img src="images/screenshot_4.png" alt="Search result" width="210"/>

## A key difference

There is a capability to utilize icons, but Google's icon names differ from Yandex's (and there isn't a full list anywhere to find), which requires manual renaming of all the icons. A few of them (banks, for example) are included. Feel free to contribute with more icons.

## Download

Add the dependency to pubspec.yaml file

	dependencies:
      yandex_place_picker: ^0.1.0

## Hands on

Sign up for MapKit API keys - [How to](https://tech.yandex.com/maps/mapkit/doc/3.x/concepts/android/quickstart-docpage/#quickstart__key)

Follow the [configuration instructions](https://github.com/Unact/yandex_mapkit#getting-started) for `yandex_mapkit`:

### Initializing for IOS
1. Add `import YandexMapKit` to `ios/Runner/AppDelegate.swift`
2. Add `YMKMapKit.setApiKey("YOUR_API_KEY")` inside `func application` in `ios/Runner/AppDelegate.swift`
3. Specify your API key in the application delegate `ios/Runner/AppDelegate.swift`

`ios/Runner/AppDelegate.swift`:
```swift
import UIKit
import Flutter
import YandexMapKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    YMKMapKit.setApiKey("YOUR_API_KEY")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
```

### Initializing for Android
1. Add dependency `implementation 'com.yandex.android:mapkit:3.4.0'` to `android/app/build.gradle`
2. Add `import com.yandex.mapkit.MapKitFactory;` to `android/app/src/main/.../MainActivity.java`
3. Add `MapKitFactory.setApiKey("YOUR_API_KEY");` inside method `onCreate` in `android/app/src/main/.../MainActivity.java`
4. Specify your API key in the application delegate `android/app/src/main/.../MainActivity.java`

`android/app/build.gradle`:
```groovy
dependencies {
    …
    implementation 'com.yandex.android:mapkit:3.4.0'
}
```

`android/app/src/main/.../MainActivity.java`:
```java
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    MapKitFactory.setApiKey("YOUR_API_KEY");
    GeneratedPluginRegistrant.registerWith(this);
  }
}
```

Check the [sample](https://github.com/vanyasem/yandex_place_picker/tree/master/example) project for a full working example.

### Usage

```dart
import 'package:yandex_place_picker/yandexplacepicker.dart';
…
final Place place = await YandexPlacePicker.selectPlace(context);
```

## Configuration

You can alter the behavior of the picker by // TODO: Implement configuration

## License

Copyright 2019-2020 Ivan Semkin

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
