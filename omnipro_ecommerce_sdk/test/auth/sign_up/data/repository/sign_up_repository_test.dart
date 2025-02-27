import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/datasource/sign_up_data_source.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/dto/create_customer_dto.fr.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/mapper.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/repository/sig_up_repository_impl.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/repository/sign_up_repository.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/domain/entity/create_customer_data.dart';

class MockSignUpDataSource extends Mock implements SignUpDataSource {}

void main() {
  late SignUpRepository repository;
  late SignUpDataSource mockDataSource;

  setUp(() async {
    mockDataSource = MockSignUpDataSource();
    repository = SignUpRepositoryImpl(mockDataSource);

    registerFallbackValue(
      CreateCustomerDTO(
        firstName: 'John',
        lastName: 'Doe',
        email: '',
        password: '',
        dateOfBirth: DateTime(2000),
        gender: 1,
      ),
    );
  });

  group('createCustomer', () {
    final createCustomer = CreateCustomerData(
      firstname: 'John',
      lastname: 'Doe',
      email: '',
      password: '',
      date: DateTime(2000),
      gender: 1,
    );
    test('should return customer when data source returns customer dto', () async {
      // arrange

      final customerDto = CustomerDTO(
        id: 1,
        firstName: 'John',
        lastName: 'Doe',
        email: 'johndoe@test.com',
        dateOfBirth: DateTime.now(),
      );
      final customer = Customer(
        id: 1,
        firstName: 'John',
        lastName: 'Doe',
        email: 'johndoe@test.com',
        dateOfBirth: DateTime.now(),
      );
      when(() => mockDataSource.createAccount(any())).thenAnswer((_) async => right(customerDto));

      // act
      final result = await repository.createCustomer(createCustomer);

      // assert
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), customer);
      verify(() => mockDataSource.createAccount(createCustomer.toDTO()));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return error when data source returns error', () async {
      // arrange
      final error = ErrorHandlerExternal(errorCode: 'ERROR', errorMessage: 'ERROR_MESSAGE');
      when(() => mockDataSource.createAccount(any())).thenAnswer((_) async => left(error));

      // act
      final result = await repository.createCustomer(createCustomer);

      // assert
      expect(result, equals(left(error)));
      verify(() => mockDataSource.createAccount(createCustomer.toDTO()));
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group(' get user credential by social media ', () {
    const providerAuthentication = ProviderAuthentication.facebook;
    test('should get user credential by social media successfully', () async {
      // Arrange
      const userCredentialDTO = UserCredentialResponseDTO(token: 'token', sub: 'uid', provider: providerAuthentication);

      when(
        () => mockDataSource.getUserCredentialBySocialMedia(providerAuthentication),
      ).thenAnswer((_) async => const Right(userCredentialDTO));

      // Act
      final result = await repository.getUserCredentialBySocialMedia(providerAuthentication);

      // Assert
      expect(result.fold((l) => null, (r) => r), userCredentialDTO.toDomain());
      verify(() => mockDataSource.getUserCredentialBySocialMedia(providerAuthentication)).called(1);
    });

    test('should return an error when getting user credential by social media', () async {
      // Arrange
      final expectedError = ErrorHandlerInternal(errorMessage: 'ERROR');
      when(
        () => mockDataSource.getUserCredentialBySocialMedia(providerAuthentication),
      ).thenAnswer((_) async => Left(expectedError));

      // Act
      final result = await repository.getUserCredentialBySocialMedia(providerAuthentication);

      // Assert
      expect(result.fold((l) => l, (r) => null), expectedError);
      verify(() => mockDataSource.getUserCredentialBySocialMedia(providerAuthentication)).called(1);
    });
  });
}
