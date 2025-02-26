import 'dart:async';
import 'dart:convert';
import 'package:core/data/datasource/customer/customer_datasource.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/entity/delete_account/delete_customer_input.dart';
import 'customer_repository.dart';

class CustomerRepositoryImpl extends CustomerRepository {
  final CustomerDatasource _customerDatasource;
  final SecureStorageDatasource _secureStorageDatasource;

  CustomerRepositoryImpl(
    this._customerDatasource,
    this._secureStorageDatasource,
  );

  @override
  Future<Either<ErrorHandler, Customer>> getCustomer() async {
    return _customerDatasource.getCustomer().then(
          (value) => value.fold(
            (l) => left(l),
            (customer) => right(customer.toDomain()),
          ),
        );
  }

  @override
  Future<Either<ErrorHandler, Customer>> updateCustomer(Customer newCustomer) async {
    return _customerDatasource.updateCustomer(newCustomer.toDTO()).then(
          (value) => value.fold(
            (l) => left(l),
            (customer) => right(customer.toDomain()),
          ),
        );
  }

  @override
  Future<Either<ErrorHandler, Customer>> updateEmail(String newEmail, String password) async {
    return _customerDatasource.updateEmail(newEmail, password).then(
          (value) => value.fold(
            (l) => left(l),
            (customer) => right(customer.toDomain()),
          ),
        );
  }

    @override
  Future<Either<ErrorHandler, Customer>> updatePassword(String currentPassword, String newPassword) async {
    return _customerDatasource.updatePassword(currentPassword, newPassword).then(
          (value) => value.fold(
            (l) => left(l),
            (customer) => right(customer.toDomain()),
          ),
        );
  }

  @override
  Future<Either<ErrorHandler, Customer>> getLocalCustomer() async {
    return _secureStorageDatasource.getData(KeySecureStorage.customer).then((value) {
      if (value.isEmpty) {
        return left(ErrorHandlerExternal(errorMessage: 'No customer in local', errorCode: ErrorCode.noCustomerInLocal));
      } else {
        return right(CustomerDTO.fromJson(jsonDecode(value)).toDomain());
      }
    });
  }

  @override
  Future<void> saveCustomerInLocal(Customer customer) async {
    CustomerDTO customerDTO = customer.toDTO();

    await _secureStorageDatasource.saveData(KeySecureStorage.customer, jsonEncode(customerDTO.toJson()));
  }

  @override
  Future<Either<ErrorHandler, bool>> deleteAccount(DeleteCustomerInput input) {
    return _customerDatasource.deleteAccount(input.toDTO());
  }
}
