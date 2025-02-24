import 'package:graphql/client.dart';
import 'package:mocktail/mocktail.dart';

class MockGraphQLClient extends Mock implements GraphQLClient {}

class MockQueryManager extends Mock implements QueryManager {}

MockGraphQLClient generateMockGraphQLClient() {
  final graphQLClient = MockGraphQLClient();
  final queryManager = MockQueryManager();

  when(() => graphQLClient.defaultPolicies).thenReturn(DefaultPolicies());
  when(() => graphQLClient.queryManager).thenReturn(queryManager);

  return graphQLClient;
}

class MockQueryResult<T> extends Mock implements QueryResult<T> {}

class _FakeQueryOptions<T> extends Fake implements QueryOptions<T> {}

MockQueryResult<T> generateMockQuery<T>(MockGraphQLClient graphQLClient, {required Map<String, dynamic> response}) {
  registerFallbackValue(_FakeQueryOptions<T>());

  final result = MockQueryResult<T>();
  when(() => result.data!).thenReturn(response);
  when(() => graphQLClient.query(any())).thenAnswer((_) async => result);
  return result;
}

MockQueryResult<T> mockQuery<T>({required Map<String, dynamic> response}) {
  registerFallbackValue(_FakeQueryOptions<T>());

  final result = MockQueryResult<T>();
  when(() => result.data!).thenReturn(response);
  return result;
}

class _FakeWatchQueryOptions<T> extends Fake implements WatchQueryOptions<T> {}

class MockObservableQuery<T> extends Mock implements ObservableQuery<T> {}

MockQueryResult<T> generateMockWatchQuery<T>(MockGraphQLClient graphQLClient) {
  registerFallbackValue(_FakeWatchQueryOptions<T>());

  final query = MockObservableQuery<T>();
  final result = MockQueryResult<T>();

  when(query.close).thenReturn(QueryLifecycle.closed);
  when(() => query.stream).thenAnswer((_) => Stream.value(result));
  when(() => query.latestResult).thenReturn(result);
  when(
    () => query.onData(
      any(),
      removeAfterInvocation: any(named: 'removeAfterInvocation'),
    ),
  ).thenReturn(() {});
  when(() => graphQLClient.watchQuery<T>(any())).thenReturn(query);

  final queryManager = graphQLClient.queryManager;
  when(() => queryManager.watchQuery<T>(any())).thenReturn(query);

  return result;
}

class _FakeMutationOptions<T> extends Fake implements MutationOptions<T> {}

MockQueryResult<T> generateMockMutation<T>(MockGraphQLClient graphQLClient, {required Map<String, dynamic> response}) {
  registerFallbackValue(_FakeMutationOptions<T>());

  final result = MockQueryResult<T>();
  when(() => result.data!).thenReturn(response);
  when(() => graphQLClient.mutate(any())).thenAnswer((_) async => result);

  return result;
}

/// Mocks a mutation result with a given response without client.
MockQueryResult<T> mockMutation<T>({required Map<String, dynamic> response}) {
  registerFallbackValue(_FakeMutationOptions<T>());

  final result = MockQueryResult<T>();
  when(() => result.data!).thenReturn(response);

  return result;
}

/// Mocks a mutation result with exception without client.
MockQueryResult<T> mockMutationWithException<T>({required String messageError, Map<String, dynamic>? extensions}) {
  registerFallbackValue(_FakeMutationOptions<T>());

  final result = MockQueryResult<T>();

  when(() => result.hasException).thenReturn(true);

  when(() => result.exception).thenReturn(OperationException(
    graphqlErrors: [
      GraphQLError(
        message: messageError,
        extensions: extensions,
      ),
    ],
  ));
  return result;
}
