import 'package:core/data/repository/internal_database/internal_database_repository.dart';

class SetValueInternalDatabaseUseCase {
  SetValueInternalDatabaseUseCase({
    required this.internalDatabaseRepository,
  });
  final InternalDatabaseRepository internalDatabaseRepository;

  Future<bool> call<T>({required String tableName, required String key, required T value}) async {
    return await internalDatabaseRepository.setValue(tableName: tableName, key: key, value: value);
  }
}
