import 'package:anywhere_app/classes/app_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_app_config.g.dart';

@Riverpod(keepAlive: true)
AppConfig currentAppConfig(CurrentAppConfigRef ref,
    {required AppConfig appConfig}) {
  return appConfig;
}
