import 'dart:async';

import 'package:flutter/services.dart';

class EarpieceAudio {
  static const MethodChannel _channel =
      const MethodChannel('earpiece_audio');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
