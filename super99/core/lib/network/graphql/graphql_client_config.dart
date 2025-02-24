import 'package:gql_transform_link/gql_transform_link.dart';
import 'package:graphql/client.dart';
import '../../utils/constants.dart';
import '../../utils/request_serializer_with_compressor.dart';
import 'refresh_token_link.dart';

///Class to configure the GraphQLClient with the base url and the refreshTokenLink
class GraphQLClientConfig {
  GraphQLClientConfig(this.baseUrl, {required this.useGETForQueries});
  final String baseUrl;
  final bool useGETForQueries;

  /// Returns a GraphQLClient with the default configuration, without cache
  GraphQLClient getDefaultClient({RefreshTokenLink? authLink}) {
    return GraphQLClient(

        /// **NOTE** The default store is the InMemoryStore, which does
        /// NOT persist to disk
        queryRequestTimeout: const Duration(seconds: 90),
        cache: GraphQLCache(),
        link: getLink(authLink));
  }

  /// Returns a GraphQLClient with hive cache
  GraphQLClient getClientWithCache({RefreshTokenLink? authLink, required HiveStore store}) {
    return GraphQLClient(
      cache: GraphQLCache(store: store),
      link: getLink(authLink),
      queryRequestTimeout: const Duration(seconds: 90),
    );
  }

  /// Return baseLink with the baseUrl and refreshTokenLink if it is not null
  /// in the case of authenticated user
  Link getLink(RefreshTokenLink? refreshTokenLink) {
    //TODO: FELIPE SACAR OTRO LINK PARA PETICIONES GET
    final baseLink =
        HttpLink(baseUrl, useGETForQueries: useGETForQueries, serializer: const RequestSerializerWithCompressor());
    final shareHeaderLink = TransformLink(requestTransformer: transformShareHeaderRequest);
    Link finalLink = refreshTokenLink == null
        ? Link.from([shareHeaderLink, baseLink])
        : Link.from([shareHeaderLink, refreshTokenLink, baseLink]);
    return finalLink;
  }

  /// Adds share header to client requests
  Request transformShareHeaderRequest(Request request) {
    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) {
        return HttpLinkHeaders(
          headers: <String, String>{...headers?.headers ?? <String, String>{}, "Store": Constants.storeView},
        );
      },
    );
  }
}
