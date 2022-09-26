import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'heic_jpg_platform_interface.dart';

/// An implementation of [HeicJpgPlatform] that uses method channels.
class MethodChannelHeicJpg extends HeicJpgPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('heic_jpg');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> convert(String inPath) async {
    final outPath = await methodChannel.invokeMethod<String>('convert', inPath);
    return outPath;
  }
}
