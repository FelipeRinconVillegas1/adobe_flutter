import 'package:core/data/datasource/session/log_out_data_source.dart';

import '../../../local/key_secure_storage.dart';

abstract class LogOutRepository {
  Future<void> logOut(List<KeySecureStorage> preserveKeys);
}

class LogOutRepositoryImpl implements LogOutRepository {
  LogOutRepositoryImpl(this._logOutDataSource);

  final LogOutDataSource _logOutDataSource;

  @override
  Future<void> logOut(List<KeySecureStorage> preserveKeys) async {
    return await _logOutDataSource.logOut(preserveKeys);
  }
}
