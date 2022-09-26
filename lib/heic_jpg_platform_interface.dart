import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'heic_jpg_method_channel.dart';

abstract class HeicJpgPlatform extends PlatformInterface {
  /// Constructs a HeicJpgPlatform.
  HeicJpgPlatform() : super(token: _token);

  static final Object _token = Object();

  static HeicJpgPlatform _instance = MethodChannelHeicJpg();

  /// The default instance of [HeicJpgPlatform] to use.
  ///
  /// Defaults to [MethodChannelHeicJpg].
  static HeicJpgPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HeicJpgPlatform] when
  /// they register themselves.
  static set instance(HeicJpgPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> convert(String inPath) {
    throw UnimplementedError('convert() has not been implemented.');
  }
}
