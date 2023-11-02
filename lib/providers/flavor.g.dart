// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentFlavorHash() => r'b39e54b0a776c470e9f6cccf37cb77f0f005bd63';

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

/// See also [currentFlavor].
@ProviderFor(currentFlavor)
const currentFlavorProvider = CurrentFlavorFamily();

/// See also [currentFlavor].
class CurrentFlavorFamily extends Family<Flavor> {
  /// See also [currentFlavor].
  const CurrentFlavorFamily();

  /// See also [currentFlavor].
  CurrentFlavorProvider call({
    required Flavor flavor,
  }) {
    return CurrentFlavorProvider(
      flavor: flavor,
    );
  }

  @override
  CurrentFlavorProvider getProviderOverride(
    covariant CurrentFlavorProvider provider,
  ) {
    return call(
      flavor: provider.flavor,
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
  String? get name => r'currentFlavorProvider';
}

/// See also [currentFlavor].
class CurrentFlavorProvider extends Provider<Flavor> {
  /// See also [currentFlavor].
  CurrentFlavorProvider({
    required Flavor flavor,
  }) : this._internal(
          (ref) => currentFlavor(
            ref as CurrentFlavorRef,
            flavor: flavor,
          ),
          from: currentFlavorProvider,
          name: r'currentFlavorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentFlavorHash,
          dependencies: CurrentFlavorFamily._dependencies,
          allTransitiveDependencies:
              CurrentFlavorFamily._allTransitiveDependencies,
          flavor: flavor,
        );

  CurrentFlavorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.flavor,
  }) : super.internal();

  final Flavor flavor;

  @override
  Override overrideWith(
    Flavor Function(CurrentFlavorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentFlavorProvider._internal(
        (ref) => create(ref as CurrentFlavorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        flavor: flavor,
      ),
    );
  }

  @override
  ProviderElement<Flavor> createElement() {
    return _CurrentFlavorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentFlavorProvider && other.flavor == flavor;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, flavor.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CurrentFlavorRef on ProviderRef<Flavor> {
  /// The parameter `flavor` of this provider.
  Flavor get flavor;
}

class _CurrentFlavorProviderElement extends ProviderElement<Flavor>
    with CurrentFlavorRef {
  _CurrentFlavorProviderElement(super.provider);

  @override
  Flavor get flavor => (origin as CurrentFlavorProvider).flavor;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
