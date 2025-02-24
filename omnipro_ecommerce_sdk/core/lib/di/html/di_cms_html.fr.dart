import 'package:core/data/datasource/html/html_datasource.dart';
import 'package:core/data/datasource/html/html_datasource_impl.dart';
import 'package:core/data/repository/html/html_repository.dart';
import 'package:core/data/repository/html/html_repository_impl.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/html/load_html_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_cms_html.fr.g.dart';

@Riverpod(keepAlive: true)
HtmlDataSource htmlDatasource(HtmlDatasourceRef ref) {
  return HtmlDataSourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: true)));
}

@Riverpod(keepAlive: true)
HtmlRepository htmlRepository(HtmlRepositoryRef ref) {
  return HtmlRepositoryImpl(ref.watch(htmlDatasourceProvider));
}

@Riverpod(keepAlive: true)
LoadHtmlUseCase loadHtmlUseCase(LoadHtmlUseCaseRef ref) {
  return LoadHtmlUseCase(ref.watch(htmlRepositoryProvider));
}
