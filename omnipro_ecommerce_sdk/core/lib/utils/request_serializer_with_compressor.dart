import 'package:graphql/client.dart';
import 'graphql_query_compressor.dart';

/// GQL will serialize your query in a human-readable format https://github.com/gql-dart/gql/blob/master/gql/lib/src/language/printer.dart#L185
/// [RequestSerializerWithCompressor] will compress the default output
class RequestSerializerWithCompressor implements RequestSerializer {
  final RequestSerializer serializer;

  const RequestSerializerWithCompressor({
    this.serializer = const RequestSerializer(),
  });

  @override
  Map<String, dynamic> serializeRequest(Request request) {
    final map = serializer.serializeRequest(request);
    map["query"] = compressGraphqlQuery(map["query"]);
    return map;
  }
}
