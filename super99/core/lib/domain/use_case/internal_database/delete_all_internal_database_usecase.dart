import 'package:core/data/repository/internal_database/internal_database_repository.dart';

class DeleteAllInternalDatabaseUseCase {
  DeleteAllInternalDatabaseUseCase({
    required this.internalDatabaseRepository,
  });
  final InternalDatabaseRepository internalDatabaseRepository;

  Future<bool> call({required String tableName, required List<String> keys}) async {
    return await internalDatabaseRepository.deleteAll(tableName: tableName, keys: keys);
  }
}
