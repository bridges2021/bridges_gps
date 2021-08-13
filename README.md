# bridges_gps
##Installation
1. Add this lines to pubspec.yaml.
```yaml
bridges_gps:
  git:
    url: https://github.com/bridges2021/bridges_gps.git
    ref: main
```

##How to use
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
