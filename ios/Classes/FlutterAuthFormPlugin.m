#import "FlutterAuthFormPlugin.h"
#if __has_include(<flutter_auth_form/flutter_auth_form-Swift.h>)
#import <flutter_auth_form/flutter_auth_form-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_auth_form-Swift.h"
#endif

@implementation FlutterAuthFormPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAuthFormPlugin registerWithRegistrar:registrar];
}
@end
