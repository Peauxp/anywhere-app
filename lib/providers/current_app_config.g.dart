// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_app_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentAppConfigHash() => r'5372105a96057d46104cd40470d1c8924e9069d0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [currentAppConfig].
@ProviderFor(currentAppConfig)
const currentAppConfigProvider = CurrentAppConfigFamily();

/// See also [currentAppConfig].
class CurrentAppConfigFamily extends Family<AppConfig> {
  /// See also [currentAppConfig].
  const CurrentAppConfigFamily();

  /// See also [currentAppConfig].
  CurrentAppConfigProvider call({
    required AppConfig appConfig,
  }) {
    return CurrentAppConfigProvider(
      appConfig: appConfig,
    );
  }

  @override
  CurrentAppConfigProvider getProviderOverride(
    covariant CurrentAppConfigProvider provider,
  ) {
    return call(
      appConfig: provider.appConfig,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currentAppConfigProvider';
}

/// See also [currentAppConfig].
class CurrentAppConfigProvider extends Provider<AppConfig> {
  /// See also [currentAppConfig].
  CurrentAppConfigProvider({
    required AppConfig appConfig,
  }) : this._internal(
          (ref) => currentAppConfig(
            ref as CurrentAppConfigRef,
            appConfig: appConfig,
          ),
          from: currentAppConfigProvider,
          name: r'currentAppConfigProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentAppConfigHash,
          dependencies: CurrentAppConfigFamily._dependencies,
          allTransitiveDependencies:
              CurrentAppConfigFamily._allTransitiveDependencies,
          appConfig: appConfig,
        );

  CurrentAppConfigProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.appConfig,
  }) : super.internal();

  final AppConfig appConfig;

  @override
  Override overrideWith(
    AppConfig Function(CurrentAppConfigRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentAppConfigProvider._internal(
        (ref) => create(ref as CurrentAppConfigRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        appConfig: appConfig,
      ),
    );
  }

  @override
  ProviderElement<AppConfig> createElement() {
    return _CurrentAppConfigProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentAppConfigProvider && other.appConfig == appConfig;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, appConfig.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CurrentAppConfigRef on ProviderRef<AppConfig> {
  /// The parameter `appConfig` of this provider.
  AppConfig get appConfig;
}

class _CurrentAppConfigProviderElement extends ProviderElement<AppConfig>
    with CurrentAppConfigRef {
  _CurrentAppConfigProviderElement(super.provider);

  @override
  AppConfig get appConfig => (origin as CurrentAppConfigProvider).appConfig;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
