import 'package:flutter_test/flutter_test.dart';
import 'package:ff_backgroud_location/ff_backgroud_location.dart';
import 'package:ff_backgroud_location/ff_backgroud_location_platform_interface.dart';
import 'package:ff_backgroud_location/ff_backgroud_location_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFfBackgroudLocationPlatform
    with MockPlatformInterfaceMixin
    implements FfBackgroudLocationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FfBackgroudLocationPlatform initialPlatform = FfBackgroudLocationPlatform.instance;

  test('$MethodChannelFfBackgroudLocation is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFfBackgroudLocation>());
  });

  test('getPlatformVersion', () async {
    FfBackgroudLocation ffBackgroudLocationPlugin = FfBackgroudLocation();
    MockFfBackgroudLocationPlatform fakePlatform = MockFfBackgroudLocationPlatform();
    FfBackgroudLocationPlatform.instance = fakePlatform;

    expect(await ffBackgroudLocationPlugin.getPlatformVersion(), '42');
  });
}
