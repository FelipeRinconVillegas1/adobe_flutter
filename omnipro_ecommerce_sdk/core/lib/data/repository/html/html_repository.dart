import 'package:core/domain/entity/html/html_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class HtmlRepository {
  Future<Either<ErrorHandler, HtmlEntity>> getCmsHtml(String identifier);
}
