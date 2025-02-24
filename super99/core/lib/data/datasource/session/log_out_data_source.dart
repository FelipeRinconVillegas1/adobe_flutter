import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';

abstract class LogOutDataSource {
  Future<void> logOut(List<KeySecureStorage> preserveKeys);
}

class LogOutDataSourceImpl implements LogOutDataSource {
  LogOutDataSourceImpl(this._secureStorageDatasource);

  final SecureStorageDatasource _secureStorageDatasource;

  @override
  Future<void> logOut(List<KeySecureStorage> preserveKeys) async {
    Map<KeySecureStorage, String> preserveData = {};
    for (var key in preserveKeys) {
      if (await _secureStorageDatasource.existData(key)) {
        final data = await _secureStorageDatasource.getData(key);
        preserveData[key] = data;
      }
    }
    await _secureStorageDatasource.deleteAll();
    for (var key in preserveData.keys) {
      await _secureStorageDatasource.saveData(key, preserveData[key]!);
    }
    await _secureStorageDatasource.saveData(KeySecureStorage.isFirstTime, 'false');
  }
}
