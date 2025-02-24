import 'package:core/domain/use_case/cart/create_cart_use_case.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockIsCustomerLoggedIn extends Mock implements IsCustomerLoggedIn {}

class MockSecureStorageRepository extends Mock implements SecureStorageRepository {}

void main() {
  late CreateCartUseCase createEmptyCartUseCase;
  late MockCartRepository mockCartRepository;
  late MockIsCustomerLoggedIn mockIsCustomerLoggedIn;
  late MockSecureStorageRepository mockSecureStorageRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockIsCustomerLoggedIn = MockIsCustomerLoggedIn();
    mockSecureStorageRepository = MockSecureStorageRepository();
    createEmptyCartUseCase = CreateCartUseCase(
      mockCartRepository,
      mockIsCustomerLoggedIn,
      mockSecureStorageRepository,
    );
  });

  test('should create empty cart for customer and save cart id', () async {
    const cartId = 'cartId';

    when(() => mockIsCustomerLoggedIn.call()).thenAnswer((_) async => true);
    when(() => mockCartRepository.createCustomerCart(isGuestUser: false)).thenAnswer((_) async => right(cartId));
    when(() => mockSecureStorageRepository.saveData(KeySecureStorage.customerCartID, cartId)).thenAnswer((_) async {});

    final result = await createEmptyCartUseCase.call();

    expect(result.fold((l) => null, (r) => r), cartId);
    verify(() => mockIsCustomerLoggedIn.call()).called(1);
    verify(() => mockCartRepository.createCustomerCart(isGuestUser: false)).called(1);
    verify(() => mockSecureStorageRepository.saveData(KeySecureStorage.customerCartID, cartId)).called(1);
  });

  test('should handle error if an error occurs', () async {
    registerFallbackValue(KeySecureStorage.guestCartID);
    const errorMessage = 'An error occurred';
    final expectedError = ErrorHandlerInternal(errorMessage: errorMessage);

    when(() => mockIsCustomerLoggedIn.call()).thenAnswer((_) async => true);
    when(() => mockCartRepository.createCustomerCart(isGuestUser: false)).thenAnswer((_) async => left(expectedError));

    final result = await createEmptyCartUseCase.call();

    expect(result.fold((l) => l, (r) => null), expectedError);
    verify(() => mockIsCustomerLoggedIn.call()).called(1);
    verify(() => mockCartRepository.createCustomerCart(isGuestUser: false)).called(1);
    verifyNever(() => mockSecureStorageRepository.saveData(any(), any()));
  });
}
