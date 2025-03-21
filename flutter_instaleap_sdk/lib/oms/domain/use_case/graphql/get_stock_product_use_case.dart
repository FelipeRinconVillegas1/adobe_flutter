import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/response_stock_product.fr.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../../data/repository/oms_repository.dart';
import '../../entity/input_stock_product.fr.dart';

class GetStockUseCase {
  GetStockUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandler, ResponseStockProduct>> call({required InputStockProduct input}) async {
    try {
      return await _omsRepository.getStock(payload: input);
    } catch (e, s) {
      return left(ErrorHandler(errorMessage: e.toString(), stackTrace: s, sourceMethod: 'GetStockUseCase-call'));
    }
  }
}
