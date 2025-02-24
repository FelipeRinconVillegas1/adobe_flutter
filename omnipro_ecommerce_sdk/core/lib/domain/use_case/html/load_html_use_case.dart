import 'package:core/data/repository/html/html_repository.dart';
import 'package:core/domain/entity/html/html_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class LoadHtmlUseCase {
  final HtmlRepository _htmlRepository;

  LoadHtmlUseCase(this._htmlRepository);

  Future<Either<ErrorHandler, HtmlEntity>> call(String identifier) async {
    return _htmlRepository.getCmsHtml(identifier);
  }
}
