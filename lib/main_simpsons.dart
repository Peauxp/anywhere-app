import 'package:anywhere_app/app.dart';
import 'package:anywhere_app/classes/app_config.dart';
import 'package:flutter/material.dart';

void main() async {
  AppConfig simpsonsAppConfig = AppConfig(
    apiEndpoint: 'simpsons+characters&format=json',
    flavor: Flavor.Simpsons,
  );
  Widget app = await initializeApp(simpsonsAppConfig);
  runApp(app);
}
