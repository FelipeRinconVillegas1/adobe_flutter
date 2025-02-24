import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class GetSimpleFlagRepository {
  Either<ErrorHandler, T> getSimpleFlag<T>(String key);
}

class GetSimpleFlagRepositoryImpl implements GetSimpleFlagRepository {
  final RemoteConfigDataSource _remoteConfigDataSource;

  GetSimpleFlagRepositoryImpl(this._remoteConfigDataSource);

  @override
  Either<ErrorHandler, T> getSimpleFlag<T>(String key) {
    try {
      final fetcherMap = {
        bool: () => _remoteConfigDataSource.getBool(key),
        int: () => _remoteConfigDataSource.getInt(key),
        double: () => _remoteConfigDataSource.getDouble(key),
        String: () => _remoteConfigDataSource.getString(key),
      };

      if (!fetcherMap.containsKey(T)) {
        return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetSimpleFlag, errorMessage: 'Type not supported'));
      }

      final value = fetcherMap[T]!() as T;
      return Right(value);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetSimpleFlag, errorMessage: e.toString()));
    }
  }
}
