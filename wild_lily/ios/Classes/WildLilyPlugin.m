#import "WildLilyPlugin.h"
#if __has_include(<wild_lily/wild_lily-Swift.h>)
#import <wild_lily/wild_lily-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wild_lily-Swift.h"
#endif

@implementation WildLilyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWildLilyPlugin registerWithRegistrar:registrar];
}
@end
