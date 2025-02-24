import 'package:core/data/datasource/config/store_config_datasource.dart';
import 'package:core/data/datasource/config/store_query.dart';
import 'package:core/data/dto/config/store_config_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../network/graphql/graphql_service.dart';
import '../secure_call_datasource.dart';

class StoreConfigDatasourceImpl extends StoreConfigDatasource {
  StoreConfigDatasourceImpl(this._graphQLService);

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, StoreConfigDTO>> getStoreConfig() {
    return secureServerCall(() async {
      final query = queryGetStoreConfig();
      final response = await _graphQLService.query(query);
      return response.fold((l) => Left(l), (r) => Right(StoreConfigDTO.fromJson(r.data?['storeConfig'])));
    });
  }


}
