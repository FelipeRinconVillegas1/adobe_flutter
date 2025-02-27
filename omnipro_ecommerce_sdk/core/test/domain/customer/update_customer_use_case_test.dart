import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/domain/use_case/customer/update_customer_use_case.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCustomerRepository extends Mock implements CustomerRepository {}

class MockSaveCustomerInLocalUseCase extends Mock implements SaveCustomerInLocalUseCase {}

void main() {
  late UpdateCustomerUseCase useCase;
  late SaveCustomerInLocalUseCase mockSaveCustomerInLocalUseCase;
  late MockCustomerRepository mockCustomerRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCustomerRepository = MockCustomerRepository();
    mockSaveCustomerInLocalUseCase = MockSaveCustomerInLocalUseCase();
    useCase = UpdateCustomerUseCase(mockCustomerRepository, mockSaveCustomerInLocalUseCase);
  });

  test('execute should call updateCustomer method of repository', () async {
    // Arrange
    final customer = Customer(
        firstName: 'John',
        id: 1,
        lastName: 'Doe',
        email: 'john.doe@example.com',
        dateOfBirth: DateTime(1990, 1, 1),);

    when(() => mockCustomerRepository.updateCustomer(customer)).thenAnswer((_) async => Right(customer));

    when(() => mockSaveCustomerInLocalUseCase.call(customer)).thenAnswer((_) async => {});

    // Act
    final result = await useCase.execute(customer);

    // Assert
    expect(result.fold((l) => null, (r) => r), customer);
    verify(() => mockCustomerRepository.updateCustomer(customer)).called(1);
    verify(() => mockSaveCustomerInLocalUseCase.call(customer)).called(1);
  });

  test('execute should handle error from updateCustomer method', () async {
    // Arrange
    final customer = Customer(
        id: 1,
        firstName: 'John',
        lastName: 'Doe',
        email: 'john.doe@example.com',
        dateOfBirth: DateTime(1990, 1, 1),);

    final error = ErrorHandlerInternal(errorMessage: 'Error updating customer');

    // Mock setup for the repository to return an error
    when(() => mockCustomerRepository.updateCustomer(customer)).thenAnswer((_) async => left(error));

    // Act
    final result = await useCase.execute(customer);

    // Assert
    expect(result.fold((l) => l, (r) => null), error);
    verify(() => mockCustomerRepository.updateCustomer(customer)).called(1);
    verifyNever(() => mockSaveCustomerInLocalUseCase.call(customer));
  });
}
