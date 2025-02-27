import 'package:core/data/datasource/customer/customer_datasource_impl.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

void main() {
  late CustomerDatasourceImpl datasource;
  late MockGraphQLService mockGraphQLService;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockGraphQLService = MockGraphQLService();
    datasource = CustomerDatasourceImpl(mockGraphQLService);
  });

  test('getCustomer should return Right(CustomerDTO) on successful response', () async {
    // Arrange
    final mockResponse = {
      'customer': {"firstname": "Jhon", "lastname": "Doe", "email": "jhon@gmail.com", "date_of_birth": "1990-01-01"}
    };
    when(() => mockGraphQLService.query(any())).thenAnswer((_) async => Right(mockQuery(response: mockResponse)));

    // Act
    final result = await datasource.getCustomer();

    // Assert
    expect(result, isA<Right<ErrorHandler, CustomerDTO>>());
    expect(result.getOrElse(() => throw Exception()), isA<CustomerDTO>());
  });

  test('getCustomer should return Left(ErrorHandler) on error response', () async {
    // Arrange
    final mockError = ErrorHandlerInternal(errorMessage: 'Error');
    when(() => mockGraphQLService.query(any())).thenAnswer((_) async => left(mockError));

    // Act
    final result = await datasource.getCustomer();

    // Assert
    expect(result.fold((l) => l, (r) => null), mockError);
  });

  test('updateCustomer should return Right(CustomerDTO) on successful response', () async {
    // Arrange
    final newCustomer = CustomerDTO(
      id: 1,
      firstName: 'John',
      lastName: 'Doe',
      email: 'omnifelipe@yopmail.com',
      dateOfBirth: DateTime(1990, 1, 1),
    );

    final mockResponse = {
      "updateCustomerV2": {
        "customer": {
          "firstname": "John",
          "lastname": "Doe",
          "date_of_birth": "1990-01-01T00:00:00.000",
          "cellphone": "1234567890",
          "country_code": "+1"
        }
      }
    };

    when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(mockMutation(response: mockResponse)));

    // Act
    final result = await datasource.updateCustomer(newCustomer);

    // Assert
    expect(result, isA<Right<ErrorHandler, CustomerDTO>>());
    expect(result.getOrElse(() => throw Exception()), isA<CustomerDTO>());
  });

  test('updateCustomer should return Left(ErrorHandler) on error response', () async {
    // Arrange
    final newCustomer = CustomerDTO(
      id: 1,
      firstName: 'John',
      lastName: 'Doe',
      email: 'john.doe@example.com',
      dateOfBirth: DateTime(1990, 1, 1),
    );

    final mockError = ErrorHandlerInternal(errorMessage: 'Error');

    when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => left(mockError));

    // Act
    final result = await datasource.updateCustomer(newCustomer);

    // Assert
    expect(result.fold((l) => l, (r) => null), mockError);
  });
}
