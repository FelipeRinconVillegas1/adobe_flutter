import 'dart:async';
import 'dart:convert';
import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/domain/entity/states_country.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/stream_event_change_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_mapper.dart';
import '../../domain/entity/customer_address_entity.dart';
import '../../domain/entity/customer_addresses.dart';
import '../../domain/entity/user_who_pickup_in_store_entity.fr.dart';
import '../datasource/address_datasource.dart';

abstract class AddressRepository
    implements StreamEventChangeContract<EventDataChange<List<CustomerAddressEntity>, AddressEvent>> {
  Future<Either<ErrorHandler, StatesCountry>> getStatesByIdCountry(String idCountry);

  Future<Either<ErrorHandler, CustomerAddressEntity>> saveNewAddress(CustomerAddressEntity customerAddress);

  Future<Either<ErrorHandler, CustomerAddressEntity?>> getLocalAddressSelected();

  Future<Either<ErrorHandler, CustomerAddresses>> getAddresses();

  Future<Either<ErrorHandler, CustomerAddressEntity?>> getLocalBillingAddressSelected();

  Future<void> saveAddressInLocal(CustomerAddressEntity customerAddress);

  Future<void> saveBillingAddressInLocal(CustomerAddressEntity customerAddress);

  Future<Either<ErrorHandler, bool>> deleteAddress(CustomerAddressEntity idAddress);

  Future<Either<ErrorHandler, bool>> updateAddress(CustomerAddressEntity customerAddress);

  Future<void> saveUserWhoPickUp(UserWhoPickupInStoreEntity userPickUp);

  Future<Either<ErrorHandler, UserWhoPickupInStoreEntity?>> getUserWhoPickUp();
}

class AddressRepositoryImpl implements AddressRepository {
  AddressRepositoryImpl(this._addressDatasource, this._secureStorageDatasource);

  final AddressDatasource _addressDatasource;
  final SecureStorageDatasource _secureStorageDatasource;

  @override
  Future<Either<ErrorHandler, StatesCountry>> getStatesByIdCountry(String idCountry) async {
    try {
      return _addressDatasource.getStatesByIdCountry(idCountry).then((value) => value.fold(
            (errorHandler) => left(errorHandler),
            (listStateDTO) => right(listStateDTO.toDomain()),
          ));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetStatesCountry, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, CustomerAddressEntity>> saveNewAddress(CustomerAddressEntity customerAddress) async {
    try {
      return _addressDatasource
          .saveNewAddress(customerAddress.toDTO())
          .then((value) => value.fold((errorHandler) => left(errorHandler), (customerAddressDTO) async {
                return right(customerAddressDTO.toDomain());
              }));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorSetCustomerAddress, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, CustomerAddresses>> getAddresses() async {
    final customerSaved = await _secureStorageDatasource.getData(KeySecureStorage.customer);
    if (customerSaved == '') {
      return right(const CustomerAddresses(shippingAddresses: []));
    }
    return _addressDatasource.getAddresses().then((value) => value.fold(
          (errorHandler) => left(errorHandler),
          (listCustomerAddressDTO) => right(CustomerAddresses(shippingAddresses: listCustomerAddressDTO.toDomain())),
        ));
  }

  @override
  Future<Either<ErrorHandler, CustomerAddressEntity?>> getLocalAddressSelected() async {
    try {
      if (await _secureStorageDatasource.existData(KeySecureStorage.addressSelected)) {
        final data = await _secureStorageDatasource.getData(KeySecureStorage.addressSelected);
        return Right(CustomerAddressDTO.fromJson(jsonDecode(data)).toDomain());
      } else {
        return right(null);
      }
    } catch (e) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetCustomerAddressSeleted, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, CustomerAddressEntity?>> getLocalBillingAddressSelected() async {
    try {
      if (await _secureStorageDatasource.existData(KeySecureStorage.billingAddressSelected)) {
        final data = await _secureStorageDatasource.getData(KeySecureStorage.billingAddressSelected);
        return Right(CustomerAddressDTO.fromJson(jsonDecode(data)).toDomain());
      } else {
        return right(null);
      }
    } catch (e) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetCustomerAddressSeleted, errorMessage: e.toString()));
    }
  }

  @override
  Future<void> saveAddressInLocal(CustomerAddressEntity customerAddress) async {
    await _secureStorageDatasource.saveData(KeySecureStorage.addressSelected, jsonEncode(customerAddress.toDTO()));
  }

  @override
  Future<void> saveBillingAddressInLocal(CustomerAddressEntity customerAddress) async {
    await _secureStorageDatasource.saveData(
        KeySecureStorage.billingAddressSelected, jsonEncode(customerAddress.toDTO()));
  }

  @override
  Stream<EventDataChange<List<CustomerAddressEntity>, AddressEvent>> getStreamEventChangeData() {
    return _addressDatasource
        .getStreamEventChangeData()
        .transform<EventDataChange<List<CustomerAddressEntity>, AddressEvent>>(
            StreamTransformer.fromHandlers(handleData: (event, sink) {
      sink.add(EventDataChange(data: event.data?.toDomain(), eventType: event.eventType));
    }));
  }

  @override
  Future<Either<ErrorHandler, bool>> deleteAddress(CustomerAddressEntity idAddress) {
    return _addressDatasource.deleteAddress(idAddress.toDTO()).then((value) => value.fold(
          (errorHandler) => left(errorHandler),
          (isDelete) => right(isDelete),
        ));
  }

  @override
  Future<Either<ErrorHandler, bool>> updateAddress(CustomerAddressEntity customerAddress) {
    return _addressDatasource.updateAddress(customerAddress.toDTO()).then((value) => value.fold(
          (errorHandler) => left(errorHandler),
          (isUpdate) => right(isUpdate),
        ));
  }

  @override
  Future<Either<ErrorHandler, UserWhoPickupInStoreEntity?>> getUserWhoPickUp() async {
    try {
      if (await _secureStorageDatasource.existData(KeySecureStorage.userPickupSelected)) {
        final data = await _secureStorageDatasource.getData(KeySecureStorage.userPickupSelected);
        return Right(UserWhoPickupInStoreEntity.fromJson(jsonDecode(data)));
      } else {
        return right(null);
      }
    } catch (e) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetUserWhoPickUpInStore, errorMessage: e.toString()));
    }
  }

  @override
  Future<void> saveUserWhoPickUp(UserWhoPickupInStoreEntity userPickUp) async {
    await _secureStorageDatasource.saveData(KeySecureStorage.userPickupSelected, jsonEncode(userPickUp));
  }
}
