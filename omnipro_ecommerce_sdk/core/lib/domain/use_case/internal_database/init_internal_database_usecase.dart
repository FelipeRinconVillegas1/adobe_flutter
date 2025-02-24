import 'package:core/data/repository/internal_database/internal_database_repository.dart';

class InitInternalDatabaseUseCase {
  InitInternalDatabaseUseCase({
    required this.internalDatabaseRepository,
  });

  final InternalDatabaseRepository internalDatabaseRepository;

  Future<void> call() async {
    await internalDatabaseRepository.init();
  }
}
