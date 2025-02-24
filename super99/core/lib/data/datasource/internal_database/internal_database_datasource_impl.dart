import 'package:core/data/datasource/internal_database/internal_database_datasource.dart';
import 'package:core/domain/entity/internal_database_values.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:hive_flutter/hive_flutter.dart';

class InternalDatabaseDatasourceImpl implements InternalDatabaseDatasource {
  ///Here, tableNames represents "boxes"
  InternalDatabaseDatasourceImpl(this.hive);

  final HiveInterface hive;

  @override
  Future<bool> init() async {
    Future<void> initPerform() async {
      await hive.initFlutter();
      for (var element in InternalDatabaseTableNames.values) {
        await hive.openBox(element.value);
      }
    }

    return await _performOperation(() async => initPerform(), 'init');
  }

  @override
  Future<bool> deleteValue({required String tableName, required String key}) async {
    Future<void> deletePerform() async {
      final box = await _openBox(tableName);
      await box?.delete(key);
    }

    return await _performOperation(() async => deletePerform(), 'delete single value');
  }

  @override
  Future<T?> getValue<T>({required String tableName, required String key}) async {
    final box = await _openBox(tableName);
    final value = box?.get(key);

    if (value is! T) return null;
    return value;
  }

  @override
  Future<bool> setValue<T>({required String tableName, required String key, required T value}) async {
    Future<void> setValuePerform() async {
      final box = await _openBox(tableName);
      await box?.put(key, value);
    }

    return await _performOperation(() async => setValuePerform(), 'set value');
  }

  @override
  Future<bool> deleteAll({required String tableName, required List<String> keys}) async {
    Future<void> deleteAllPerform() async {
      final box = await _openBox(tableName);
      await box?.deleteAll(keys);
    }

    return await _performOperation(() async => deleteAllPerform(), 'delete all values');
  }

  Future<Box?> _openBox(String boxName) async {
    try {
      final box = await hive.openBox(boxName);
      return box;
    } catch (e) {
      ErrorHandlerInternal(errorMessage: 'Error trying to open box: $boxName');
      return null;
    }
  }

  Future<bool> _performOperation(Future<void> Function() action, String identifier) async {
    try {
      await action();
      return true;
    } catch (e) {
      ErrorHandlerInternal(errorMessage: 'Error trying to perform the operation in Hive: $identifier');
      return false;
    }
  }
}
