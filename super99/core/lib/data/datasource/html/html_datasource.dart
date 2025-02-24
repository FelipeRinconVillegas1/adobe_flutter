import 'package:core/data/dto/html/html_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class HtmlDataSource {
  Future<Either<ErrorHandler, HtmlDTO>> getHtmlSourcePage(String identifier);
}
