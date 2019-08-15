package ru.semkin.yandexplacepicker;

import android.app.Activity;
import android.content.Intent;

import java.util.HashMap;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.PluginRegistry;

/** YandexPlacePickerPlugin */
public class YandexPlacePickerPlugin implements MethodCallHandler,
        PluginRegistry.ActivityResultListener {
  Activity activity;
  Result result;

  public final static int REQUEST_PLACE_PICKER = 306;

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "yandexplacepicker");
    channel.setMethodCallHandler(new YandexPlacePickerPlugin(registrar.activity()));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    this.result = result;
    if (call.method.equals("launch_picker")) {
      getIntentClick();
    } else {
      result.notImplemented();
    }
  }

  public YandexPlacePickerPlugin(Activity activity) {
    this.activity = activity;
  }

  private void getIntentClick() {
    YandexPlacePicker.IntentBuilder builder = new YandexPlacePicker.IntentBuilder();
    builder.setYandexMapsKey(""); // TODO: add key
    Intent placeIntent = builder.build(activity);
    activity.startActivityForResult(placeIntent, REQUEST_PLACE_PICKER);
  }

  @Override
  public boolean onActivityResult(int requestCode, int activityResult, Intent intent) {
    if (activityResult == Activity.RESULT_OK && requestCode == REQUEST_PLACE_PICKER) {
      PlaceParcelable place = YandexPlacePicker.getPlace(intent);
      HashMap<String, Object> map = new HashMap<>();
      map.put("address", place.getAddress());
      map.put("name", place.getName());
      map.put("lat", place.getPoint().getLatitude());
      map.put("lng", place.getPoint().getLongitude());
      result.success(map);
    }
    else
      result.success(null);

    return true;
  }
}
