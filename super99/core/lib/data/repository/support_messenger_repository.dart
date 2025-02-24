import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class SupportMessengerRepository {
  Future<Either<ErrorHandler, String>> getIdFacebook();
}

class SupportMessengerRepositoryImpl implements SupportMessengerRepository {
  final RemoteConfigDataSource _remoteConfigDataSource;

  SupportMessengerRepositoryImpl(this._remoteConfigDataSource);

  @override
  Future<Either<ErrorHandler, String>> getIdFacebook() async {
    try {
      final idFacebook = _remoteConfigDataSource.getString(RemoteConfigKey.idFacebook);
      return Right(idFacebook);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.getIdFacebook, errorMessage: e.toString()));
    }
  }
}
