import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ff_backgroud_location_method_channel.dart';

abstract class FfBackgroudLocationPlatform extends PlatformInterface {
  /// Constructs a FfBackgroudLocationPlatform.
  FfBackgroudLocationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FfBackgroudLocationPlatform _instance = MethodChannelFfBackgroudLocation();

  /// The default instance of [FfBackgroudLocationPlatform] to use.
  ///
  /// Defaults to [MethodChannelFfBackgroudLocation].
  static FfBackgroudLocationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FfBackgroudLocationPlatform] when
  /// they register themselves.
  static set instance(FfBackgroudLocationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
