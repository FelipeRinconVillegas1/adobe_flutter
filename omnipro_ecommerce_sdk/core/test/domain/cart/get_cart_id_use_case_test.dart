import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock for the SecureStorageRepository
class MockSecureStorageRepository extends Mock implements SecureStorageRepository {}

// Mock for the IsCustomerLoggedIn
class MockIsCustomerLoggedIn extends Mock implements IsCustomerLoggedIn {}

void main() {
  late GetCartIdUseCase getCartIdUseCase;
  late MockSecureStorageRepository mockSecureStorageRepository;
  late MockIsCustomerLoggedIn mockIsCustomerLoggedIn;

  setUp(() {
    mockSecureStorageRepository = MockSecureStorageRepository();
    mockIsCustomerLoggedIn = MockIsCustomerLoggedIn();
    getCartIdUseCase = GetCartIdUseCase(
      mockSecureStorageRepository,
      mockIsCustomerLoggedIn,
    );
  });

  group('GetCartIdUseCase', () {
    test('should return customer cart id when customer is logged in', () async {
      // Mock data
      const customerCartId = 'customer_cart_id';

      // Mock dependencies' behavior
      when(() => mockIsCustomerLoggedIn()).thenAnswer((_) async => true);
      when(() => mockSecureStorageRepository.getData(KeySecureStorage.customerCartID))
          .thenAnswer((_) async => customerCartId);

      // Call the use case
      final result = await getCartIdUseCase.call();

      // Verify the result
      expect(result, equals(customerCartId));
      verify(() => mockIsCustomerLoggedIn());
      verify(() => mockSecureStorageRepository.getData(KeySecureStorage.customerCartID));
      verifyNoMoreInteractions(mockIsCustomerLoggedIn);
      verifyNoMoreInteractions(mockSecureStorageRepository);
    });

    test('should return guest cart id when customer is not logged in', () async {
      // Mock data
      const guestCartId = 'guest_cart_id';

      // Mock dependencies' behavior
      when(() => mockIsCustomerLoggedIn()).thenAnswer((_) async => false);
      when(() => mockSecureStorageRepository.getData(KeySecureStorage.guestCartID))
          .thenAnswer((_) async => guestCartId);

      // Call the use case
      final result = await getCartIdUseCase.call();

      // Verify the result
      expect(result, equals(guestCartId));
      verify(() => mockIsCustomerLoggedIn());
      verify(() => mockSecureStorageRepository.getData(KeySecureStorage.guestCartID));
      verifyNoMoreInteractions(mockIsCustomerLoggedIn);
      verifyNoMoreInteractions(mockSecureStorageRepository);
    });
  });
}
