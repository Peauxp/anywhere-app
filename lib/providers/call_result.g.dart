// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_result.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$callResultHash() => r'1f96724e6e90a14ecfdcc69dbf621ca84d19146f';

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

abstract class _$CallResult extends BuildlessAsyncNotifier<ResultData?> {
  late final String apiEndpoint;

  FutureOr<ResultData?> build(
    String apiEndpoint,
  );
}

/// See also [CallResult].
@ProviderFor(CallResult)
const callResultProvider = CallResultFamily();

/// See also [CallResult].
class CallResultFamily extends Family<AsyncValue<ResultData?>> {
  /// See also [CallResult].
  const CallResultFamily();

  /// See also [CallResult].
  CallResultProvider call(
    String apiEndpoint,
  ) {
    return CallResultProvider(
      apiEndpoint,
    );
  }

  @override
  CallResultProvider getProviderOverride(
    covariant CallResultProvider provider,
  ) {
    return call(
      provider.apiEndpoint,
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
  String? get name => r'callResultProvider';
}

/// See also [CallResult].
class CallResultProvider
    extends AsyncNotifierProviderImpl<CallResult, ResultData?> {
  /// See also [CallResult].
  CallResultProvider(
    String apiEndpoint,
  ) : this._internal(
          () => CallResult()..apiEndpoint = apiEndpoint,
          from: callResultProvider,
          name: r'callResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$callResultHash,
          dependencies: CallResultFamily._dependencies,
          allTransitiveDependencies:
              CallResultFamily._allTransitiveDependencies,
          apiEndpoint: apiEndpoint,
        );

  CallResultProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiEndpoint,
  }) : super.internal();

  final String apiEndpoint;

  @override
  FutureOr<ResultData?> runNotifierBuild(
    covariant CallResult notifier,
  ) {
    return notifier.build(
      apiEndpoint,
    );
  }

  @override
  Override overrideWith(CallResult Function() create) {
    return ProviderOverride(
      origin: this,
      override: CallResultProvider._internal(
        () => create()..apiEndpoint = apiEndpoint,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiEndpoint: apiEndpoint,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<CallResult, ResultData?> createElement() {
    return _CallResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CallResultProvider && other.apiEndpoint == apiEndpoint;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiEndpoint.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CallResultRef on AsyncNotifierProviderRef<ResultData?> {
  /// The parameter `apiEndpoint` of this provider.
  String get apiEndpoint;
}

class _CallResultProviderElement
    extends AsyncNotifierProviderElement<CallResult, ResultData?>
    with CallResultRef {
  _CallResultProviderElement(super.provider);

  @override
  String get apiEndpoint => (origin as CallResultProvider).apiEndpoint;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
