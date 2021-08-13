import 'package:bridges_gps/getGPS.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GPS example'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Get location'),
            onPressed: () async {
              try {
                final _location = await determinePosition();
                print(_location);
              } catch (e) {
                print(e);
              }
            },
          ),
        ),
      ),
    );
  }
}
