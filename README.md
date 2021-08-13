# bridges_gps
## Installation
1. Add this lines to pubspec.yaml.
```yaml
bridges_gps:
  git:
    url: https://github.com/bridges2021/bridges_gps.git
    ref: main
```
2. Add this lines to ios/Runner/Info.plist for IOS support
```plist
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to location when open.</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>This app needs access to location when in the background.</string>
<key>UIViewControllerBasedStatusBarAppearance</key>
```
3. Add this lines to android/app/src/main/AndroidManifest.xml for Android support
```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
```
## How to use
1. Call this function.
```dart
final _location = await determinePosition();
```
2. Handle the error.
```dart
try {
  final _location = await determinePosition();
} catch (e) {
  print(e);
}
```
