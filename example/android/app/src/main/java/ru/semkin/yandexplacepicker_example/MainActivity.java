package ru.semkin.yandexplacepicker_example;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    MapKitFactory.setApiKey("YOUR_API_KEY"); // TODO Replace with your MapKit API key
    GeneratedPluginRegistrant.registerWith(this);
  }
}
