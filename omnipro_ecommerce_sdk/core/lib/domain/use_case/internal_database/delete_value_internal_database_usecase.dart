import 'package:core/data/repository/internal_database/internal_database_repository.dart';

class DeleteValueInternalDatabaseUseCase {
  DeleteValueInternalDatabaseUseCase({
    required this.internalDatabaseRepository,
  });
  final InternalDatabaseRepository internalDatabaseRepository;

  Future<bool> call({required String tableName, required String key}) async {
    return await internalDatabaseRepository.deleteValue(tableName: tableName, key: key);
  }
}
