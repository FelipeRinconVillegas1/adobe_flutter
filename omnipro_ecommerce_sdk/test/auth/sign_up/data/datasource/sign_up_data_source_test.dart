import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/network/conectivity_check.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/auth/shared/data/identify_with_social_media.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/datasource/sign_up_data_source.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/datasource/sign_up_data_source_impl.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/dto/create_customer_dto.fr.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

class MockIdentifyWithSocialMedia extends Mock implements IdentifyWithSocialMedia {}

class ConnectivityCheckMock extends Mock implements ConnectivityCheck {}

void main() {
  late SignUpDataSource dataSource;
  late MockGraphQLClient mockGraphQLClient;
  late MockGraphQLService mockGraphQLService;
  late GraphQLService graphQlService;
  late MockIdentifyWithSocialMedia mockIdentifyWithSocialMedia;

  setUp(() async {
    mockIdentifyWithSocialMedia = MockIdentifyWithSocialMedia();
    mockGraphQLClient = generateMockGraphQLClient();
    graphQlService = GraphQLService.onlyTest(mockGraphQLClient, ConnectivityCheckMock());
    mockGraphQLService = MockGraphQLService();
    dataSource = SignUpDataSourceImpl(graphQlService, mockIdentifyWithSocialMedia);
  });

  group('createAccount', () {
    final tCreateAccountDTO = CreateCustomerDTO(
        email: 'test@test.com',
        firstName: 'John',
        lastName: 'Doe',
        password: 'password',
        dateOfBirth: DateTime.now(),
        gender: 1,
    );

    final tCustomerDTO = CustomerDTO.fromJson({
      'email': 'test@test.com',
      'firstname': 'John',
      'lastname': 'Doe',
    });

    test('should return CustomerDTO when the call to GraphQLService is successful', () async {
      // arrange
      final resultQuery = generateMockMutation<CustomerDTO>(mockGraphQLClient, response: {
        'createCustomer': {
          'customer': {'email': 'test@test.com', 'firstname': 'John', 'lastname': 'Doe', 'password': ''}
        }
      });
      when(() => resultQuery.hasException).thenReturn(false);
      final result = await dataSource.createAccount(tCreateAccountDTO);
      // assert
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), tCustomerDTO);
    });

    test('should return ErrorHandler when the call to GraphQLService is unsuccessful', () async {
      // arrange
      final datasourceTest = SignUpDataSourceImpl(mockGraphQLService, mockIdentifyWithSocialMedia);

      final tErrorHandler = ErrorHandlerInternal(
        errorMessage: 'Something went wrong',
      );
      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(tErrorHandler));
      // act
      final result = await datasourceTest.createAccount(tCreateAccountDTO);
      // assert
      expect(result, Left(tErrorHandler));
      verify(() => mockGraphQLService.mutation(any())).called(1);
    });
  });

  group(' get user credential by social media ', () {
    const providerAuthentication = ProviderAuthentication.facebook;
    test('should get user credential by social media successfully', () async {
      // Arrange
      const userCredentialDTO = UserCredentialResponseDTO(token: 'token', sub: 'uid', provider: providerAuthentication);

      when(() => mockIdentifyWithSocialMedia(providerAuthentication))
          .thenAnswer((_) async => const Right(userCredentialDTO));

      // Act
      final result = await dataSource.getUserCredentialBySocialMedia(providerAuthentication);

      // Assert
      expect(result.fold((l) => null, (r) => r), userCredentialDTO);
      verify(() => mockIdentifyWithSocialMedia(providerAuthentication)).called(1);
    });

    test('should return an error when getting user credential by social media', () async {
      // Arrange
      final expectedError = ErrorHandlerInternal(errorMessage: 'ERROR');
      when(() => mockIdentifyWithSocialMedia(providerAuthentication)).thenAnswer((_) async => Left(expectedError));

      // Act
      final result = await dataSource.getUserCredentialBySocialMedia(providerAuthentication);

      // Assert
      expect(result.fold((l) => l, (r) => null), expectedError);
      verify(() => mockIdentifyWithSocialMedia(providerAuthentication)).called(1);
    });
  });
}
