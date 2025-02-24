import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

import 'data/datasource/secure_storage_datasource.dart';
import 'data/datasource/secure_storage_datasource_impl.dart';
import 'data/repository/secure_storage_repository_impl.dart';
import 'data/repository/secure_storege_repository.dart';

part 'di_secure_storage.fr.g.dart';

@Riverpod(keepAlive: true)
SecureStorageRepository secureStorageRepositorySource(SecureStorageRepositorySourceRef ref) {
  return SecureStorageRepositoryImpl(ref.watch(secureStorageDatasourceSourceProvider));
}

@Riverpod(keepAlive: true)
SecureStorageDatasource secureStorageDatasourceSource(SecureStorageDatasourceSourceRef ref) {
  return SecureStorageDatasourceImpl(FlutterSecureStorage(), BehaviorSubject<EventDataSecureStorage>());
}
