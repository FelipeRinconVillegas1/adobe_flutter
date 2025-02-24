import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:rxdart/rxdart.dart';

import '../../key_secure_storage.dart';

/// Repository for Secure Storage
abstract class SecureStorageRepository {
  ///save data
  Future<void> saveData(KeySecureStorage key, String data);

  ///get data
  Future<String> getData(KeySecureStorage key);

  ///delete data
  Future<void> deleteData(KeySecureStorage key);

  /// Stream of events when data changes
  ValueStream<EventDataSecureStorage> getStreamEventChangeData();
}
