#import "YandexPlacePickerPlugin.h"
#import <yandex_place_picker/yandex_place_picker-Swift.h>

@implementation YandexPlacePickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftYandexPlacePickerPlugin registerWithRegistrar:registrar];
}
@end
