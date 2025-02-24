import 'package:core/data/repository/session/log_out_repository.dart';

import '../../../local/key_secure_storage.dart';

class LogOutUseCase {
  final LogOutRepository _logOutRepository;

  LogOutUseCase(this._logOutRepository);

  Future<void> call({List<KeySecureStorage> preserveKeys = const []}) async {
    return await _logOutRepository.logOut(preserveKeys);
  }
}
