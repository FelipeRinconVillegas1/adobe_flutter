import 'dart:convert';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/datasource/shipping_methods/shipping_methods_datasource.dart';
import 'package:core/data/dto/shipping_methods_dto.fr.dart';

class ShippingMethodsDataSourceImpl implements ShippingMethodsDataSource {
  ShippingMethodsDataSourceImpl(this._secureStorageDatasource);
  final SecureStorageDatasource _secureStorageDatasource;

  @override
  Future<Either<ErrorHandler, ShippingMethodItemDTO?>> getShippingMethodSelected() async {
    return secureServerCall(
      () async {
        if (await _secureStorageDatasource.existData(KeySecureStorage.shippingMethodSelected)) {
          final data = await _secureStorageDatasource.getData(KeySecureStorage.shippingMethodSelected);
          return Right(ShippingMethodItemDTO.fromJson(jsonDecode(data)));
        } else {
          return right(null);
        }
      },
    );
  }

  @override
  Future<Either<ErrorHandler, ShippingMethodItemDTO>> saveShippingMethodSelected(
      ShippingMethodItemDTO shippingMethodIemDTO) {
    return secureServerCall(
      () async {
        await _secureStorageDatasource.saveData(
          KeySecureStorage.shippingMethodSelected,
          jsonEncode(shippingMethodIemDTO.toJson()),
        );
        return Right(shippingMethodIemDTO.copyWith());
      },
    );
  }
}
