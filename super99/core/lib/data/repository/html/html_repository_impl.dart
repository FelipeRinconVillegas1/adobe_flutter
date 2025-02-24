import 'package:core/data/datasource/html/html_datasource.dart';
import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/html/html_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import 'html_repository.dart';

class HtmlRepositoryImpl implements HtmlRepository {
  final HtmlDataSource _htmlDataSource;

  HtmlRepositoryImpl(this._htmlDataSource);

  @override
  Future<Either<ErrorHandler, HtmlEntity>> getCmsHtml(String identifier) async {
    final serverConfig = await _htmlDataSource.getHtmlSourcePage(identifier);
    return serverConfig.fold((l) => left(l), (r) => right(r.toDomain()));
  }
}
