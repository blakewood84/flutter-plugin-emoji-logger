
import 'dart:async';

import 'package:flutter/services.dart';

class EmojiLoggerNative {
  static const MethodChannel _channel =
      const MethodChannel('emoji_logger_native');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
