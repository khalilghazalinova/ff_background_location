import 'dart:async';
import 'package:flutter/services.dart';

class FfBackgroundLocation {
  static const MethodChannel _channel = MethodChannel('ff_background_location');
  static const EventChannel _eventChannel = EventChannel('ff_background_location_events');

  static Future<bool> initialize() async {
    final bool initialized = await _channel.invokeMethod('initialize');
    return initialized;
  }

  static Stream<Map<String, double>> get locationStream {
    return _eventChannel.receiveBroadcastStream().map((event) => Map<String, double>.from(event));
  }
}
