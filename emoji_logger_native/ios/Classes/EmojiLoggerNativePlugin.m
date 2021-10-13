#import "EmojiLoggerNativePlugin.h"
#if __has_include(<emoji_logger_native/emoji_logger_native-Swift.h>)
#import <emoji_logger_native/emoji_logger_native-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "emoji_logger_native-Swift.h"
#endif

@implementation EmojiLoggerNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEmojiLoggerNativePlugin registerWithRegistrar:registrar];
}
@end
