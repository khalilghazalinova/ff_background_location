 Pod::Spec.new do |s|
  # ... other configurations ...

  s.info_plist = {
    'NSLocationWhenInUseUsageDescription' => 'This app tracks your location for improved service delivery.',
    'NSLocationAlwaysUsageDescription' => 'This app tracks your location in the background for continuous service.',
    'NSLocationAlwaysAndWhenInUseUsageDescription' => 'This app tracks your location to provide continuous service both when the app is in use and in the background.',
    'UIBackgroundModes' => ['location']
  }
end
