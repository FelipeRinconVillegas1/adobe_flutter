import 'package:core/data/repository/share_product_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/share_content.dart';
import 'package:dartz/dartz.dart';

/// Share product (url-detail-product-web) with intent using native methods
class ShareProductNativeMethodsUseCase {
  final ShareProductRepository _shareProductRepository;
  final ShareContent _shareContent;

  ShareProductNativeMethodsUseCase(this._shareProductRepository, this._shareContent);

  Future<Either<ErrorHandler, bool>> call(String localizationCode, String productUrl) async {
    try {
      final complementShareContentResult = await _shareProductRepository.getComplementShareProduct();

      return complementShareContentResult.fold((l) => left(l), (complementShareContent) async {
        final String messageInitial = complementShareContent.message.getMessage(localizationCode);

        await _shareContent.share('${complementShareContent.url}$productUrl.html', subject: messageInitial);

        return Right(true);
      });
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
