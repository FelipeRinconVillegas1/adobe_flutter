import 'package:core/local/key_secure_storage.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

enum SecureStorageTypeEvent { delete, save, get }

class EventDataSecureStorage extends Equatable {
  EventDataSecureStorage(this.key, this.eventType, {this.data});

  final KeySecureStorage key;
  final String? data;
  final SecureStorageTypeEvent eventType;

  @override
  List<Object?> get props => [key, data, eventType];
}

///Datasource for Secure Store
abstract class SecureStorageDatasource {
  ///save data
  Future<void> saveData(KeySecureStorage key, String data);

  Future<bool> existData(KeySecureStorage key);

  ///Get data this method can return empty string if not exist data in secure storage,
  ///verify if exist data with [existData] method
  Future<String> getData(KeySecureStorage key);

  ///delete data
  Future<void> deleteData(KeySecureStorage key);

  Future<void> deleteAll();

  ValueStream<EventDataSecureStorage> getStreamEventChangeData();
}
