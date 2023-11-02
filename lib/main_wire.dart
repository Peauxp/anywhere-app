import 'package:anywhere_app/app.dart';
import 'package:anywhere_app/classes/app_config.dart';
import 'package:flutter/material.dart';

void main() async {
  AppConfig wireAppConfig = AppConfig(
    appName: 'Wire Anywhere',
    flavor: Flavor.Wire,
  );
  Widget app = await initializeApp(wireAppConfig);
  runApp(app);
}
