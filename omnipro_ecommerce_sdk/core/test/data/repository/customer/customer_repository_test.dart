import 'package:core/data/datasource/customer/customer_datasource.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/data/repository/customer/customer_repository_impl.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock of CustomerDatasource
class MockCustomerDatasource extends Mock implements CustomerDatasource {}

class MockSecureStorageDatasource extends Mock implements SecureStorageDatasource {}

void main() {
  late CustomerRepository repository;
  late MockCustomerDatasource mockCustomerDatasource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCustomerDatasource = MockCustomerDatasource();
    repository = CustomerRepositoryImpl(mockCustomerDatasource, MockSecureStorageDatasource());
  });

  test('getCustomer should return Right(Customer) on successful response', () async {
    // Example data for the customer
    final customerData = CustomerDTO(
      firstName: 'John',
      id: 1,
      lastName: 'Doe',
      email: 'email',
      dateOfBirth: DateTime(1990, 1, 1),
      customAttributes: [],
    );

    // Mock of successful response from the datasource
    final mockResponse = customerData;

    // Mock setup for the datasource
    when(() => mockCustomerDatasource.getCustomer()).thenAnswer((_) async => Right(mockResponse));

    // Call the method under test
    final result = await repository.getCustomer();

    // Result verification
    expect(result, isA<Right<ErrorHandler, Customer>>());
    expect(result.getOrElse(() => throw Exception()), customerData.toDomain());
  });

  test('getCustomer should return Left(ErrorHandler) on error response', () async {
    // Mock of error response from the datasource
    final mockError = ErrorHandlerInternal(errorMessage: 'Error');

    // Mock setup for the datasource
    when(() => mockCustomerDatasource.getCustomer()).thenAnswer((_) async => left(mockError));

    // Call the method under test
    final result = await repository.getCustomer();

    // Result verification
    expect(result.fold((l) => l, (r) => null), mockError);
  });

  test('updateCustomer should return Right(Customer) on successful response', () async {
    // Example data for the customer
    final customer = Customer(
        firstName: 'John',
        id: 1,
        lastName: 'Doe',
        email: 'john.doe@example.com',
        dateOfBirth: DateTime(1990, 1, 1),
        customAttributesRequired: {});

    // Mock of successful response from the datasource
    final mockResponse = customer.toDTO();

    // Mock setup for the datasource
    when(() => mockCustomerDatasource.updateCustomer(mockResponse)).thenAnswer((_) async => Right(mockResponse));

    // Call the method under test
    final result = await repository.updateCustomer(customer);

    // Result verification
    expect(result, isA<Right<ErrorHandler, Customer>>());
    expect(result.getOrElse(() => throw Exception()), customer);
  });

  test('updateCustomer should return Left(ErrorHandler) on error response', () async {
    // Example data for the customer
    final customer = Customer(
        firstName: 'John',
        id: 1,
        lastName: 'Doe',
        email: 'john.doe@example.com',
        dateOfBirth: DateTime(1990, 1, 1),
        customAttributesRequired: {});

    // Mock of error response from the datasource
    final mockError = ErrorHandlerInternal(errorMessage: 'Error');

    // Mock setup for the datasource
    when(() => mockCustomerDatasource.updateCustomer(customer.toDTO())).thenAnswer((_) async => left(mockError));

    // Call the method under test
    final result = await repository.updateCustomer(customer);

    // Result verification
    expect(result.fold((l) => l, (r) => null), mockError);
  });
}
