import 'dart:async';

import 'package:flutter/services.dart';

class Recaptchav2Plugin {
  static const MethodChannel _channel =
      const MethodChannel('recaptchav2_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
