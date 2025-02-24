import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:rxdart/rxdart.dart';

import 'secure_storege_repository.dart';

class SecureStorageRepositoryImpl implements SecureStorageRepository {
  final SecureStorageDatasource _secureStorageDataSource;

  SecureStorageRepositoryImpl(this._secureStorageDataSource);

  @override
  Future<void> deleteData(KeySecureStorage key) async {
    await _secureStorageDataSource.deleteData(key);
  }

  @override
  Future<String> getData(KeySecureStorage key) async {
    return await _secureStorageDataSource.getData(key);
  }

  @override
  Future<void> saveData(KeySecureStorage key, String data) async {
    await _secureStorageDataSource.saveData(key, data);
  }

  @override
  ValueStream<EventDataSecureStorage> getStreamEventChangeData() {
    return _secureStorageDataSource.getStreamEventChangeData();
  }
}
