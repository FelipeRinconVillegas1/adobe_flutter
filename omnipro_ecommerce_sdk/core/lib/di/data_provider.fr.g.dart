// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_provider.fr.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectivityCheckHash() => r'2a0c9a8f08dd2caa91715d5c8058b7b14e773621';

/// See also [connectivityCheck].
@ProviderFor(connectivityCheck)
final connectivityCheckProvider = Provider<ConnectivityCheck>.internal(
  connectivityCheck,
  name: r'connectivityCheckProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$connectivityCheckHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ConnectivityCheckRef = ProviderRef<ConnectivityCheck>;
String _$logOutDatasourceHash() => r'654b01d79ad943adf1a806e590363067031c3edc';

/// See also [logOutDatasource].
@ProviderFor(logOutDatasource)
final logOutDatasourceProvider = Provider<LogOutDataSource>.internal(
  logOutDatasource,
  name: r'logOutDatasourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$logOutDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LogOutDatasourceRef = ProviderRef<LogOutDataSource>;
String _$remoteConfigDataSourceHash() =>
    r'ed010961f9c5b3e39deddcde4fb41b1cb8b48aa2';

/// See also [remoteConfigDataSource].
@ProviderFor(remoteConfigDataSource)
final remoteConfigDataSourceProvider =
    Provider<RemoteConfigDataSource>.internal(
      remoteConfigDataSource,
      name: r'remoteConfigDataSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$remoteConfigDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RemoteConfigDataSourceRef = ProviderRef<RemoteConfigDataSource>;
String _$graphQLServiceSourceHash() =>
    r'e5d309c4cc117f2c16fbbc1f48a15943096af976';

/// Class to configure the GraphQLClient with the base url (ADOBE) for get, and the refreshTokenLink use GET for queries
///
/// Copied from [graphQLServiceSource].
@ProviderFor(graphQLServiceSource)
final graphQLServiceSourceProvider = Provider<GraphQLService>.internal(
  graphQLServiceSource,
  name: r'graphQLServiceSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$graphQLServiceSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLServiceSourceRef = ProviderRef<GraphQLService>;
String _$graphQLServiceSourceNoAuthenticatedHash() =>
    r'e22c23b3d727f2a3bc9a79572b29256e333cabfc';

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

/// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
///
/// Copied from [graphQLServiceSourceNoAuthenticated].
@ProviderFor(graphQLServiceSourceNoAuthenticated)
const graphQLServiceSourceNoAuthenticatedProvider =
    GraphQLServiceSourceNoAuthenticatedFamily();

/// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
///
/// Copied from [graphQLServiceSourceNoAuthenticated].
class GraphQLServiceSourceNoAuthenticatedFamily extends Family<GraphQLService> {
  /// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
  ///
  /// Copied from [graphQLServiceSourceNoAuthenticated].
  const GraphQLServiceSourceNoAuthenticatedFamily();

  /// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
  ///
  /// Copied from [graphQLServiceSourceNoAuthenticated].
  GraphQLServiceSourceNoAuthenticatedProvider call({required bool useGet}) {
    return GraphQLServiceSourceNoAuthenticatedProvider(useGet: useGet);
  }

  @override
  GraphQLServiceSourceNoAuthenticatedProvider getProviderOverride(
    covariant GraphQLServiceSourceNoAuthenticatedProvider provider,
  ) {
    return call(useGet: provider.useGet);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'graphQLServiceSourceNoAuthenticatedProvider';
}

/// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
///
/// Copied from [graphQLServiceSourceNoAuthenticated].
class GraphQLServiceSourceNoAuthenticatedProvider
    extends Provider<GraphQLService> {
  /// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
  ///
  /// Copied from [graphQLServiceSourceNoAuthenticated].
  GraphQLServiceSourceNoAuthenticatedProvider({required bool useGet})
    : this._internal(
        (ref) => graphQLServiceSourceNoAuthenticated(
          ref as GraphQLServiceSourceNoAuthenticatedRef,
          useGet: useGet,
        ),
        from: graphQLServiceSourceNoAuthenticatedProvider,
        name: r'graphQLServiceSourceNoAuthenticatedProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$graphQLServiceSourceNoAuthenticatedHash,
        dependencies: GraphQLServiceSourceNoAuthenticatedFamily._dependencies,
        allTransitiveDependencies:
            GraphQLServiceSourceNoAuthenticatedFamily
                ._allTransitiveDependencies,
        useGet: useGet,
      );

  GraphQLServiceSourceNoAuthenticatedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.useGet,
  }) : super.internal();

  final bool useGet;

  @override
  Override overrideWith(
    GraphQLService Function(GraphQLServiceSourceNoAuthenticatedRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GraphQLServiceSourceNoAuthenticatedProvider._internal(
        (ref) => create(ref as GraphQLServiceSourceNoAuthenticatedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        useGet: useGet,
      ),
    );
  }

  @override
  ProviderElement<GraphQLService> createElement() {
    return _GraphQLServiceSourceNoAuthenticatedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GraphQLServiceSourceNoAuthenticatedProvider &&
        other.useGet == useGet;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, useGet.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GraphQLServiceSourceNoAuthenticatedRef on ProviderRef<GraphQLService> {
  /// The parameter `useGet` of this provider.
  bool get useGet;
}

class _GraphQLServiceSourceNoAuthenticatedProviderElement
    extends ProviderElement<GraphQLService>
    with GraphQLServiceSourceNoAuthenticatedRef {
  _GraphQLServiceSourceNoAuthenticatedProviderElement(super.provider);

  @override
  bool get useGet =>
      (origin as GraphQLServiceSourceNoAuthenticatedProvider).useGet;
}

String _$graphQLServiceAppServerSourceHash() =>
    r'7b1f5319ef017d4e90b2ea6568bbd0ad9d262998';

/// Class to configure the GraphQLClient (APP SERVER) with the base url and  use POST for queries
///
/// Copied from [graphQLServiceAppServerSource].
@ProviderFor(graphQLServiceAppServerSource)
final graphQLServiceAppServerSourceProvider = Provider<GraphQLService>.internal(
  graphQLServiceAppServerSource,
  name: r'graphQLServiceAppServerSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$graphQLServiceAppServerSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLServiceAppServerSourceRef = ProviderRef<GraphQLService>;
String _$graphQLServiceSourceUsePOSTHash() =>
    r'14690e58f9e1ba81c93fcf50b29abe92a2de4f6c';

/// Class to configure the GraphQLClient with the base url and the refreshTokenLink use POST for queries
///
/// Copied from [graphQLServiceSourceUsePOST].
@ProviderFor(graphQLServiceSourceUsePOST)
final graphQLServiceSourceUsePOSTProvider = Provider<GraphQLService>.internal(
  graphQLServiceSourceUsePOST,
  name: r'graphQLServiceSourceUsePOSTProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$graphQLServiceSourceUsePOSTHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLServiceSourceUsePOSTRef = ProviderRef<GraphQLService>;
String _$refreshTokenLinkSourceHash() =>
    r'787c2d62bccaf3f19362d3973b90fe52044fdddb';

/// See also [refreshTokenLinkSource].
@ProviderFor(refreshTokenLinkSource)
final refreshTokenLinkSourceProvider = Provider<RefreshTokenLink>.internal(
  refreshTokenLinkSource,
  name: r'refreshTokenLinkSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$refreshTokenLinkSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RefreshTokenLinkSourceRef = ProviderRef<RefreshTokenLink>;
String _$tokenServiceSourceHash() =>
    r'2b24686c64adc0fb0fd72c871bc5aebc6fe4fa68';

/// See also [tokenServiceSource].
@ProviderFor(tokenServiceSource)
final tokenServiceSourceProvider = Provider<TokenService>.internal(
  tokenServiceSource,
  name: r'tokenServiceSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$tokenServiceSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TokenServiceSourceRef = ProviderRef<TokenService>;
String _$graphQLClientConfigSourceUseGetHash() =>
    r'cab888a6bca2376cf0c82b12d13170c211db7a1f';

/// Class to configure the GraphQLClient with the base url and the refreshTokenLink with use GET for queries
///
/// Copied from [graphQLClientConfigSourceUseGet].
@ProviderFor(graphQLClientConfigSourceUseGet)
final graphQLClientConfigSourceUseGetProvider =
    Provider<GraphQLClientConfig>.internal(
      graphQLClientConfigSourceUseGet,
      name: r'graphQLClientConfigSourceUseGetProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$graphQLClientConfigSourceUseGetHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLClientConfigSourceUseGetRef = ProviderRef<GraphQLClientConfig>;
String _$graphQLClientConfigAppServerSourceHash() =>
    r'67fff399e1f07e5986d1fd755aedcc02d98ee77a';

/// See also [graphQLClientConfigAppServerSource].
@ProviderFor(graphQLClientConfigAppServerSource)
final graphQLClientConfigAppServerSourceProvider =
    Provider<GraphQLClientConfig>.internal(
      graphQLClientConfigAppServerSource,
      name: r'graphQLClientConfigAppServerSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$graphQLClientConfigAppServerSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLClientConfigAppServerSourceRef =
    ProviderRef<GraphQLClientConfig>;
String _$graphQLClientConfigSourceUsePOSTHash() =>
    r'dd4f2cf3b843c70008b9246f1d45d81a6f756d2b';

/// Class to configure the GraphQLClient with the base url and the refreshTokenLink with use POST for queries
///
/// Copied from [graphQLClientConfigSourceUsePOST].
@ProviderFor(graphQLClientConfigSourceUsePOST)
final graphQLClientConfigSourceUsePOSTProvider =
    Provider<GraphQLClientConfig>.internal(
      graphQLClientConfigSourceUsePOST,
      name: r'graphQLClientConfigSourceUsePOSTProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$graphQLClientConfigSourceUsePOSTHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLClientConfigSourceUsePOSTRef = ProviderRef<GraphQLClientConfig>;
String _$firebaseRemoteConfigSourceHash() =>
    r'9b5852a0d0d9277a3ef5c15a536505e7f5d950fc';

/// See also [firebaseRemoteConfigSource].
@ProviderFor(firebaseRemoteConfigSource)
final firebaseRemoteConfigSourceProvider =
    Provider<FirebaseRemoteConfig>.internal(
      firebaseRemoteConfigSource,
      name: r'firebaseRemoteConfigSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$firebaseRemoteConfigSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseRemoteConfigSourceRef = ProviderRef<FirebaseRemoteConfig>;
String _$tokenMediatorSourceHash() =>
    r'4f8ac17e198840d827670219996ceed8007500f0';

/// See also [tokenMediatorSource].
@ProviderFor(tokenMediatorSource)
final tokenMediatorSourceProvider = Provider<TokenMediator>.internal(
  tokenMediatorSource,
  name: r'tokenMediatorSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$tokenMediatorSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TokenMediatorSourceRef = ProviderRef<TokenMediator>;
String _$baseUrlAppServerSourceHash() =>
    r'1326ca4c29f0ca982429421b1a2e87db6e4c318f';

/// See also [baseUrlAppServerSource].
@ProviderFor(baseUrlAppServerSource)
final baseUrlAppServerSourceProvider = Provider<String>.internal(
  baseUrlAppServerSource,
  name: r'baseUrlAppServerSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$baseUrlAppServerSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BaseUrlAppServerSourceRef = ProviderRef<String>;
String _$baseUrlSourceHash() => r'608af1bf26cea50f93e26fc0d2bc061fc26b3c5c';

/// See also [baseUrlSource].
@ProviderFor(baseUrlSource)
final baseUrlSourceProvider = Provider<String>.internal(
  baseUrlSource,
  name: r'baseUrlSourceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$baseUrlSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BaseUrlSourceRef = ProviderRef<String>;
String _$baseUrlRestHash() => r'13326b252013b696b84630ec08fa8f4e332ddce9';

/// REST API PROVIDERS ----------------------------------------------------------
///
/// Copied from [baseUrlRest].
@ProviderFor(baseUrlRest)
final baseUrlRestProvider = Provider<String>.internal(
  baseUrlRest,
  name: r'baseUrlRestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$baseUrlRestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BaseUrlRestRef = ProviderRef<String>;
String _$httpServiceTokenHash() => r'4110c7739f6f3d7ea1a4280a8ef277ad76a3a7a1';

/// See also [httpServiceToken].
@ProviderFor(httpServiceToken)
final httpServiceTokenProvider = Provider<TokenService>.internal(
  httpServiceToken,
  name: r'httpServiceTokenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$httpServiceTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HttpServiceTokenRef = ProviderRef<TokenService>;
String _$refreshTokenLockHash() => r'7fdbad438e9a223ffcf94cc6b6014747b922cea9';

/// See also [refreshTokenLock].
@ProviderFor(refreshTokenLock)
final refreshTokenLockProvider = Provider<Lock>.internal(
  refreshTokenLock,
  name: r'refreshTokenLockProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$refreshTokenLockHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RefreshTokenLockRef = ProviderRef<Lock>;
String _$refreshTokenClientHTTPHash() =>
    r'e1c30bbf4ea6554044fe5175fd3b442b813a38f2';

/// See also [refreshTokenClientHTTP].
@ProviderFor(refreshTokenClientHTTP)
final refreshTokenClientHTTPProvider = Provider<Client>.internal(
  refreshTokenClientHTTP,
  name: r'refreshTokenClientHTTPProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$refreshTokenClientHTTPHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RefreshTokenClientHTTPRef = ProviderRef<Client>;
String _$apiClientHash() => r'd2019208dd84cf827143d097a8badbfe64d2583f';

/// See also [apiClient].
@ProviderFor(apiClient)
final apiClientProvider = Provider<ApiClient>.internal(
  apiClient,
  name: r'apiClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$apiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApiClientRef = ProviderRef<ApiClient>;
String _$dropdownOptionsDatasourceHash() =>
    r'993f3025aa5f0844d58dbb9b32572b853a426148';

/// See also [dropdownOptionsDatasource].
@ProviderFor(dropdownOptionsDatasource)
final dropdownOptionsDatasourceProvider =
    Provider<DropdownOptionsDatasource>.internal(
      dropdownOptionsDatasource,
      name: r'dropdownOptionsDatasourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$dropdownOptionsDatasourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DropdownOptionsDatasourceRef = ProviderRef<DropdownOptionsDatasource>;
String _$suggestedTextsDataSourceHash() =>
    r'a94f8f75dfd95eba43621b997824e6cbc3c1936d';

/// See also [suggestedTextsDataSource].
@ProviderFor(suggestedTextsDataSource)
final suggestedTextsDataSourceProvider =
    AutoDisposeProvider<SuggestedTextsDataSource>.internal(
      suggestedTextsDataSource,
      name: r'suggestedTextsDataSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$suggestedTextsDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SuggestedTextsDataSourceRef =
    AutoDisposeProviderRef<SuggestedTextsDataSource>;
String _$suggestedTextRepositoryHash() =>
    r'bb3e715c2852d9c1617fd8f5b94f2fbd5e5c6fc4';

/// See also [suggestedTextRepository].
@ProviderFor(suggestedTextRepository)
final suggestedTextRepositoryProvider =
    AutoDisposeProvider<SuggestedTextRepository>.internal(
      suggestedTextRepository,
      name: r'suggestedTextRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$suggestedTextRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SuggestedTextRepositoryRef =
    AutoDisposeProviderRef<SuggestedTextRepository>;
String _$saveSuggestedEmailUseCaseHash() =>
    r'cfa7224f5b0e7478aea6708e2d2641011b483410';

/// See also [saveSuggestedEmailUseCase].
@ProviderFor(saveSuggestedEmailUseCase)
final saveSuggestedEmailUseCaseProvider =
    AutoDisposeProvider<SaveSuggestedEmailUseCase>.internal(
      saveSuggestedEmailUseCase,
      name: r'saveSuggestedEmailUseCaseProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$saveSuggestedEmailUseCaseHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SaveSuggestedEmailUseCaseRef =
    AutoDisposeProviderRef<SaveSuggestedEmailUseCase>;
String _$getSuggestedEmailsUseCaseHash() =>
    r'0fd594c7ed81361c2e539216392070173185795e';

/// See also [getSuggestedEmailsUseCase].
@ProviderFor(getSuggestedEmailsUseCase)
final getSuggestedEmailsUseCaseProvider =
    AutoDisposeProvider<GetSuggestedEmailsUseCase>.internal(
      getSuggestedEmailsUseCase,
      name: r'getSuggestedEmailsUseCaseProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$getSuggestedEmailsUseCaseHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSuggestedEmailsUseCaseRef =
    AutoDisposeProviderRef<GetSuggestedEmailsUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
