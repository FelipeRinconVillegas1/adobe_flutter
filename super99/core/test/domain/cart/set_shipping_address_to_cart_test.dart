import 'package:address/data/repository/address_mapper.dart';
import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/entity/cart/set_shipping_address_oms_options.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/set_shipping_address_to_cart.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../../data/datasource/cart/cart_fake_data.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockGetIdCartUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late SetShippingAddressToCartUseCase addShippingAddressToCartUseCase;
  late CartRepository mockCartRepository;
  late MockGetIdCartUseCase mockGetIdCartUseCase;
  late IsCustomerLoggedIn isCustomerLoggedInMock;
  late SetShippingAddressOmsOptions setShippingOmsOptions;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockGetIdCartUseCase = MockGetIdCartUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    addShippingAddressToCartUseCase =
        SetShippingAddressToCartUseCase(mockCartRepository, mockGetIdCartUseCase, isCustomerLoggedInMock);
    setShippingOmsOptions = SetShippingAddressOmsOptions(
      cityCustom: "08",
      stateCustom: "87",
      zoneCustom: "097",
      latitude: "1234",
      longitude: "12324",
    );
  });

  final orderAddress = CartFakeData.customerFakeAddress.toDomain();

  const cartIdMock = 'cartId';

  final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData).toDomain();

  test('should add shipping address to cart and return ShippingAddressesOnCart', () async {
    // Arrange

    when(() => mockCartRepository.setShippingAddressesOnCart(orderAddress, cartIdMock,
        isGuestUser: false,
        setShippingAddressOmsOptions: setShippingOmsOptions)).thenAnswer((_) async => Right(mockCart));

    when(() => mockGetIdCartUseCase.call()).thenAnswer((_) async => cartIdMock);

    // Act
    final result = await addShippingAddressToCartUseCase.call(orderAddress, setShippingOmsOptions);

    // Assert
    expect(result, equals(Right(mockCart)));
    verify(() => mockCartRepository.setShippingAddressesOnCart(orderAddress, cartIdMock,
        isGuestUser: false, setShippingAddressOmsOptions: setShippingOmsOptions)).called(1);
    verify(() => mockGetIdCartUseCase.call()).called(1);
    verifyNoMoreInteractions(mockCartRepository);
  });

  test('should return ErrorHandler if an error occurs with cartRepository', () async {
    // Arrange

    final expectedErrorHandler = ErrorHandlerInternal(errorMessage: 'Error occurred');
    when(() => mockCartRepository.setShippingAddressesOnCart(orderAddress, cartIdMock,
        isGuestUser: false,
        setShippingAddressOmsOptions: setShippingOmsOptions)).thenAnswer((_) async => Left(expectedErrorHandler));
    when(() => mockGetIdCartUseCase.call()).thenAnswer((_) async => cartIdMock);

    // Act
    final result = await addShippingAddressToCartUseCase.call(orderAddress, setShippingOmsOptions);

    // Assert
    expect(result, equals(Left(expectedErrorHandler)));
    verify(() => mockCartRepository.setShippingAddressesOnCart(orderAddress, cartIdMock,
        isGuestUser: false, setShippingAddressOmsOptions: setShippingOmsOptions)).called(1);
    verify(() => mockGetIdCartUseCase.call()).called(1);
    verifyNoMoreInteractions(mockCartRepository);
  });

  test('should return ErrorHandlerExternal with errorCode emptyCartId if an getCartIdUseCase return empty cartId',
      () async {
    // Arrange
    when(() => mockGetIdCartUseCase.call()).thenAnswer((_) async => '');

    // Act
    final result = await addShippingAddressToCartUseCase.call(orderAddress, setShippingOmsOptions);

    // Assert
    expect(result.fold((l) => l, (r) => null),
        ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdSetShippingAddress, errorMessage: 'Cart id is empty'));

    verifyNever(() => mockCartRepository.setShippingAddressesOnCart(orderAddress, cartIdMock,
        isGuestUser: false, setShippingAddressOmsOptions: setShippingOmsOptions));
    verify(() => mockGetIdCartUseCase.call()).called(1);
    verifyNoMoreInteractions(mockCartRepository);
  });
}
