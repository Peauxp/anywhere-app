import 'package:anywhere_app/app.dart';
import 'package:anywhere_app/classes/app_config.dart';
import 'package:flutter/material.dart';

void main() async {
  AppConfig wireAppConfig = AppConfig(
    apiEndpoint: 'the+wire+characters&format=json',
    flavor: Flavor.Wire,
  );
  Widget app = await initializeApp(wireAppConfig);
  runApp(app);
}
