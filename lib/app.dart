import 'dart:async';

import 'package:anywhere_app/classes/app_config.dart';
import 'package:anywhere_app/providers/flavor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  return ProviderScope(child: MaterialApp(home: MyApp(appConfig: appConfig)));
}

class MyApp extends ConsumerWidget {
  const MyApp({
    Key? key,
    required this.appConfig,
  }) : super(key: key);

  final AppConfig appConfig;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(currentFlavorProvider(flavor: appConfig.flavor));
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters of ${flavorToString(flavor)}'),
      ),
      body: const Placeholder(),
    );
  }
}
