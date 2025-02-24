import 'package:core/data/datasource/html/html_datasource.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/html/html_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import 'html_query.dart';

class HtmlDataSourceImpl extends HtmlDataSource {
  final GraphQLService _graphQLService;

  HtmlDataSourceImpl(this._graphQLService);

  @override
  Future<Either<ErrorHandler, HtmlDTO>> getHtmlSourcePage(String identifier) {
    return secureServerCall(() async {
      final response = await _graphQLService.query(getCmsPageQuery(identifier));
      return response.fold((l) => left(l), (r) => right(HtmlDTO.fromJson(r.data!["cmsPage"])));
    });
  }
}
