abstract class InternalDatabaseDatasource {
  Future<bool> init();
  Future<bool> setValue<T>({required String tableName, required String key, required T value});
  Future<bool> deleteValue({required String tableName, required String key});
  Future<bool> deleteAll({required String tableName, required List<String> keys});
  Future<T?> getValue<T>({required String tableName, required String key});
}
