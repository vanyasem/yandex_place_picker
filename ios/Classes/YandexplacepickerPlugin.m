#import "YandexplacepickerPlugin.h"
#import <yandexplacepicker/yandexplacepicker-Swift.h>

@implementation YandexplacepickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftYandexplacepickerPlugin registerWithRegistrar:registrar];
}
@end
