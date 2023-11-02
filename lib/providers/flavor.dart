import 'package:anywhere_app/classes/app_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flavor.g.dart';

@Riverpod(keepAlive: true)
Flavor currentFlavor(CurrentFlavorRef ref, {required Flavor flavor}) {
  return flavor;
}
