import 'package:address/data/repository/address_mapper.dart';
import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/entity/cart/set_shipping_address_oms_options.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/set_billing_address_to_cart.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:dartz/dartz.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

// Mock for the CartRepository
class MockCartRepository extends Mock implements CartRepository {}

// Mock for the GetCartIdUseCase
class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late SetBillingAddressToCartUseCase setBillingAddressToCartUseCase;
  late MockCartRepository mockCartRepository;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  late IsCustomerLoggedIn isCustomerLoggedInMock;
  late AddressOmsOptions addressOmsOptions;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();

    setBillingAddressToCartUseCase =
        SetBillingAddressToCartUseCase(mockCartRepository, mockGetCartIdUseCase, isCustomerLoggedInMock);
    addressOmsOptions = AddressOmsOptions(
      cityCustom: "08",
      stateCustom: "87",
      zoneCustom: "097",
      latitude: "1234",
      longitude: "12324",
    );
  });

  group('SetBillingAddressToCartUseCase', () {
    // Mock data
    final orderAddress = CartFakeData.customerFakeAddress.toDomain();

    String cartId = '1234';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData).toDomain();

    test('should return the address detail when successfully set billing address', () async {
      // Mock dependencies' behavior

      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => cartId);
      when(() => mockCartRepository.setBillingAddressesOnCart(orderAddress, cartId,
          isGuestUser: false, addressOmsOptions: addressOmsOptions)).thenAnswer((_) async => Right(mockCart));

      // Call the use case
      final result = await setBillingAddressToCartUseCase.call(orderAddress, addressOmsOptions);

      // Verify the result
      expect(result, Right(mockCart));
      verify(() => mockGetCartIdUseCase.call()).called(1);
      verify(() => mockCartRepository.setBillingAddressesOnCart(orderAddress, cartId,
          isGuestUser: false, addressOmsOptions: addressOmsOptions)).called(1);
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyNoMoreInteractions(mockCartRepository);
    });

    test('should return an ErrorHandler when cartId is empty', () async {
      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => '');

      // Call the use case
      final result = await setBillingAddressToCartUseCase.call(orderAddress, addressOmsOptions);

      // Verify the result
      expect(
        result,
        left(ErrorHandlerExternal(
          errorCode: ErrorCode.emptyCartIdSetBillingAddress,
          errorMessage: "Cart id is empty",
        )),
      );
      verify(() => mockGetCartIdUseCase.call()).called(1);
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyZeroInteractions(mockCartRepository);
    });
  });
}
