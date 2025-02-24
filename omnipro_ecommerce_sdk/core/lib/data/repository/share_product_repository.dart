import 'dart:convert';
import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/complement_share_product_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/domain/entity/complement_share_product.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class ShareProductRepository {
  Future<Either<ErrorHandler, ComplementSharedProduct>> getComplementShareProduct();
}

class ShareProductRepositoryImpl implements ShareProductRepository {
  final RemoteConfigDataSource _remoteConfigDataSource;

  ShareProductRepositoryImpl(this._remoteConfigDataSource);

  @override
  Future<Either<ErrorHandler, ComplementSharedProduct>> getComplementShareProduct() async {
    return secureServerCall(() async {
      String jsonShareProduct = _remoteConfigDataSource.getString(RemoteConfigKey.complementShareProduct);

      return Right(ComplementShareProductDTO.fromJson(jsonDecode(jsonShareProduct)).toDomain());
    });
  }
}
