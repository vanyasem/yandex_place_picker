#import "YandexPlacePickerPlugin.h"
#import <yandexplacepicker/yandexplacepicker-Swift.h>

@implementation YandexPlacePickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftYandexPlacePickerPlugin registerWithRegistrar:registrar];
}
@end
