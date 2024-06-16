// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDataSourceHash() => r'95a8238d85626431c6877dd19232a3157cfc2367';

/// See also [userDataSource].
@ProviderFor(userDataSource)
final userDataSourceProvider = AutoDisposeProvider<UserDataSource>.internal(
  userDataSource,
  name: r'userDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserDataSourceRef = AutoDisposeProviderRef<UserDataSource>;
String _$userRepositoryHash() => r'2f84e59b41a7ac535020d9b3f353ffb3d2604830';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = AutoDisposeProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = AutoDisposeProviderRef<UserRepository>;
String _$getCurrentUserUseCaseHash() =>
    r'b8052d1908b2de225587f6d585b88d70cb2f0831';

/// See also [getCurrentUserUseCase].
@ProviderFor(getCurrentUserUseCase)
final getCurrentUserUseCaseProvider =
    AutoDisposeProvider<GetCurrentUserUseCase>.internal(
  getCurrentUserUseCase,
  name: r'getCurrentUserUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrentUserUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrentUserUseCaseRef
    = AutoDisposeProviderRef<GetCurrentUserUseCase>;
String _$getUserByIdUseCaseHash() =>
    r'e6c2c433a0cd52f2f32266a632a6ee2a198fae5c';

/// See also [getUserByIdUseCase].
@ProviderFor(getUserByIdUseCase)
final getUserByIdUseCaseProvider =
    AutoDisposeProvider<GetUserByIdUseCase>.internal(
  getUserByIdUseCase,
  name: r'getUserByIdUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getUserByIdUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUserByIdUseCaseRef = AutoDisposeProviderRef<GetUserByIdUseCase>;
String _$logOutUseCaseHash() => r'801187887fa12faeaa9f7c55fd53c49eed12a29b';

/// See also [logOutUseCase].
@ProviderFor(logOutUseCase)
final logOutUseCaseProvider = AutoDisposeProvider<LogoutUseCase>.internal(
  logOutUseCase,
  name: r'logOutUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$logOutUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LogOutUseCaseRef = AutoDisposeProviderRef<LogoutUseCase>;
String _$getUserByIdHash() => r'71dba750d142276721f0fab50334bc3e378e293a';

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

/// See also [getUserById].
@ProviderFor(getUserById)
const getUserByIdProvider = GetUserByIdFamily();

/// See also [getUserById].
class GetUserByIdFamily extends Family<AsyncValue<User>> {
  /// See also [getUserById].
  const GetUserByIdFamily();

  /// See also [getUserById].
  GetUserByIdProvider call(
    String id,
  ) {
    return GetUserByIdProvider(
      id,
    );
  }

  @override
  GetUserByIdProvider getProviderOverride(
    covariant GetUserByIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getUserByIdProvider';
}

/// See also [getUserById].
class GetUserByIdProvider extends AutoDisposeFutureProvider<User> {
  /// See also [getUserById].
  GetUserByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getUserById(
            ref as GetUserByIdRef,
            id,
          ),
          from: getUserByIdProvider,
          name: r'getUserByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserByIdHash,
          dependencies: GetUserByIdFamily._dependencies,
          allTransitiveDependencies:
              GetUserByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetUserByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<User> Function(GetUserByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserByIdProvider._internal(
        (ref) => create(ref as GetUserByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User> createElement() {
    return _GetUserByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUserByIdRef on AutoDisposeFutureProviderRef<User> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetUserByIdProviderElement extends AutoDisposeFutureProviderElement<User>
    with GetUserByIdRef {
  _GetUserByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetUserByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
