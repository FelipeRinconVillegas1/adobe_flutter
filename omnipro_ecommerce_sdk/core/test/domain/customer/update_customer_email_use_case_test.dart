import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/domain/use_case/customer/update_customer_email_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCustomerRepository extends Mock implements CustomerRepository {}

class MockSaveCustomerInLocalUseCase extends Mock implements SaveCustomerInLocalUseCase {}

void main() {
  late UpdateCustomerEmailUseCase updateCustomerEmailUseCase;
  late MockCustomerRepository mockCustomerRepository;
  late MockSaveCustomerInLocalUseCase mockSaveCustomerInLocalUseCase;

  setUp(() async {
    LoggerApp().init(isDebug: false, isTest: true);
    mockCustomerRepository = MockCustomerRepository();
    mockSaveCustomerInLocalUseCase = MockSaveCustomerInLocalUseCase();
    updateCustomerEmailUseCase = UpdateCustomerEmailUseCase(
      mockCustomerRepository,
      mockSaveCustomerInLocalUseCase,
    );
  });

  group('UpdateCustomerEmail use case', () {
    final newEmail = 'newemail@example.com';
    final password = 'password123';
    final mockCustomer = Customer(
      firstName: 'John',
      id: 1,
      lastName: 'Doe',
      email: newEmail,
      dateOfBirth: DateTime(1990, 1, 1),
      customAttributesRequired: {},
    );

    test('should update customer email successfully', () async {
      when(() => mockCustomerRepository.updateEmail(newEmail, password)).thenAnswer((_) async => Right(mockCustomer));

      when(() => mockSaveCustomerInLocalUseCase.call(mockCustomer)).thenAnswer((_) async {});

      final result = await updateCustomerEmailUseCase.call(newEmail, password);

      expect(result, Right(mockCustomer));

      verify(() => mockCustomerRepository.updateEmail(newEmail, password)).called(1);
      verify(() => mockSaveCustomerInLocalUseCase.call(mockCustomer)).called(1);
    });

    test('should return error when updating email fails', () async {
      final newEmail = 'newemail@example.com';
      final password = 'password123';
      final mockError = ErrorHandlerInternal(
          errorMessage:
              'Failed to update email'); // Replace ErrorHandlerInternal with your specific error implementation if different

      when(() => mockCustomerRepository.updateEmail(newEmail, password)).thenAnswer((_) async => Left(mockError));

      final result = await updateCustomerEmailUseCase.call(newEmail, password);

      expect(result, Left(mockError));
      verifyNever(() => mockSaveCustomerInLocalUseCase.call(mockCustomer));
    });
  });
}
