import 'package:core/data/repository/internal_database/internal_database_repository.dart';

class GetValueInternalDatabaseUseCase {
  GetValueInternalDatabaseUseCase({
    required this.internalDatabaseRepository,
  });
  final InternalDatabaseRepository internalDatabaseRepository;

  Future<T?> call<T>({required String tableName, required String key}) async {
    return await internalDatabaseRepository.getValue(tableName: tableName, key: key);
  }
}
