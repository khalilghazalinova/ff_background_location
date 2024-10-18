import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ff_backgroud_location_platform_interface.dart';

/// An implementation of [FfBackgroudLocationPlatform] that uses method channels.
class MethodChannelFfBackgroudLocation extends FfBackgroudLocationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ff_backgroud_location');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
