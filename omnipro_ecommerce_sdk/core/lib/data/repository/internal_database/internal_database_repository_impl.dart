import 'package:core/data/datasource/internal_database/internal_database_datasource.dart';
import 'package:core/data/repository/internal_database/internal_database_repository.dart';

class InternalDatabaseRepositoryImpl implements InternalDatabaseRepository {
  InternalDatabaseRepositoryImpl({
    required this.internalDatabaseDatasource,
  });

  final InternalDatabaseDatasource internalDatabaseDatasource;

  @override
  Future<bool> deleteAll({required String tableName, required List<String> keys}) async {
    return await internalDatabaseDatasource.deleteAll(tableName: tableName, keys: keys);
  }

  @override
  Future<bool> deleteValue({required String tableName, required String key}) async {
    return await internalDatabaseDatasource.deleteValue(tableName: tableName, key: key);
  }

  @override
  Future<T?> getValue<T>({required String tableName, required String key}) async {
    return await internalDatabaseDatasource.getValue(tableName: tableName, key: key);
  }

  @override
  Future<bool> init() async {
    return await internalDatabaseDatasource.init();
  }

  @override
  Future<bool> setValue<T>({required String tableName, required String key, required T value}) async {
    return await internalDatabaseDatasource.setValue(tableName: tableName, key: key, value: value);
  }
}
