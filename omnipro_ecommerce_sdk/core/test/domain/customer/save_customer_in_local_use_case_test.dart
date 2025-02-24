import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:mocktail/mocktail.dart';

// Mock of SecureStorageRepository
class MockSecureStorageRepository extends Mock implements SecureStorageRepository {}

void main() {
  late SaveCustomerInLocalUseCase useCase;
  late MockSecureStorageRepository mockSecureStorageRepository;

  // setUp(() {
  //   mockSecureStorageRepository = MockSecureStorageRepository();
  //   useCase = SaveCustomerInLocalUseCase(mockSecureStorageRepository);
  // });

  // test('call should save customer data to local storage', () async {
  //   // Sample customer data
  //   when(() => mockSecureStorageRepository.saveData(KeySecureStorage.customer, any())).thenAnswer((_) async => {});
  //   final customer = Customer(firstName: 'John', lastName: 'Doe', email: 'john.doe@example.com');

  //   // Call the method under test
  //   await useCase.call(customer);

  //   // Verify that the customer data is saved to local storage
  //   final expectedData = jsonEncode(customer.toDTO().toJson());
  //   verify(() => mockSecureStorageRepository.saveData(KeySecureStorage.customer, expectedData)).called(1);
  // });
}
