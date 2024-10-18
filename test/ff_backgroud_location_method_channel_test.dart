import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ff_backgroud_location/ff_backgroud_location_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFfBackgroudLocation platform = MethodChannelFfBackgroudLocation();
  const MethodChannel channel = MethodChannel('ff_backgroud_location');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
