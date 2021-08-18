import 'package:flutter/foundation.dart';
import 'package:location/location.dart';

Future<LocationData> getLocation() async {
  Location location = new Location();

  if (kIsWeb) {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        throw 'Service not available';
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        throw 'Permission denied';
      }
    }
  }

  return await location.getLocation();
}
