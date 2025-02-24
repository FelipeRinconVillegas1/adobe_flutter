import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rxdart/rxdart.dart';

class SecureStorageDatasourceImpl implements SecureStorageDatasource {
  final FlutterSecureStorage storage;
  final BehaviorSubject<EventDataSecureStorage> subjectEvent;

  SecureStorageDatasourceImpl(this.storage, this.subjectEvent);

  @override
  Future<void> deleteData(KeySecureStorage key) async {
    await storage.delete(key: key.name);
    subjectEvent.add(EventDataSecureStorage(key, SecureStorageTypeEvent.delete));
  }

  @override
  Future<String> getData(KeySecureStorage key) async {
    try {
      final data = await storage.read(key: key.name) ?? "";
      subjectEvent.add(EventDataSecureStorage(key, SecureStorageTypeEvent.get, data: data.isNotEmpty ? data : null));
      return data;
    } catch (e) {
      return "";
    }
  }

  @override
  Future<void> saveData(KeySecureStorage key, String data) async {
    try {
      await storage.write(key: key.name, value: data);
      subjectEvent.add(EventDataSecureStorage(key, SecureStorageTypeEvent.save, data: data));
    } catch (e) {
      try {
        subjectEvent.add(EventDataSecureStorage(key, SecureStorageTypeEvent.save, data: data));
      } catch (e, s) {
        ErrorHandlerInternal(errorMessage: e.toString(), stackTrace: s);
        return;
      }
    }
  }

  @override
  ValueStream<EventDataSecureStorage> getStreamEventChangeData() {
    return subjectEvent.stream;
  }

  @override
  Future<void> deleteAll() {
    subjectEvent.add(EventDataSecureStorage(KeySecureStorage.deleteAll, SecureStorageTypeEvent.delete));
    return storage.deleteAll();
  }

  @override
  Future<bool> existData(KeySecureStorage key) async {
    return (await storage.containsKey(key: key.name)) && ((await storage.read(key: key.name)) ?? '').isNotEmpty;
  }
}
