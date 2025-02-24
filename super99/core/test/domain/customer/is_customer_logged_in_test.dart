import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorageRepository extends Mock implements SecureStorageRepository {}

void main() {
  group('IsCustomerLoggedIn', () {
    late MockSecureStorageRepository mockSecureStorageRepository;
    late IsCustomerLoggedIn isCustomerLoggedIn;

    setUp(() {
      mockSecureStorageRepository = MockSecureStorageRepository();
      isCustomerLoggedIn = IsCustomerLoggedIn(mockSecureStorageRepository);
    });

    test('returns true if customer is logged in', () async {
      when(() => mockSecureStorageRepository.getData(KeySecureStorage.customer))
          .thenAnswer((_) => Future.value('customerData'));
      when(() => mockSecureStorageRepository.getData(KeySecureStorage.sessionData))
          .thenAnswer((_) => Future.value('sessionData'));

      final result = await isCustomerLoggedIn.call();

      expect(result, true);
      verify(() => mockSecureStorageRepository.getData(KeySecureStorage.customer));
      verify(() => mockSecureStorageRepository.getData(KeySecureStorage.sessionData));
    });

    test('returns false if customer is not logged in', () async {
      when(() => mockSecureStorageRepository.getData(KeySecureStorage.customer)).thenAnswer((_) => Future.value(''));
      when(() => mockSecureStorageRepository.getData(KeySecureStorage.sessionData)).thenAnswer((_) => Future.value(''));

      final result = await isCustomerLoggedIn.call();

      expect(result, false);
      verify(() => mockSecureStorageRepository.getData(KeySecureStorage.customer));
      verify(() => mockSecureStorageRepository.getData(KeySecureStorage.sessionData));
    });
  });
}
