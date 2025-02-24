import 'dart:async';
import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import 'save_customer_in_local_use_case.dart';

enum GetCustomerMode {
  /// Only get the customer from local storage
  onlyLocal,

  /// Get the customer from remote and save it in local storage
  remote,

  /// Return local data,  get the customer from remote and save it in local storage unawaited
  firstLocal,
}

class GetCustomerUseCase {
  GetCustomerUseCase(this._customerRepository, this._saveCustomer);

  final CustomerRepository _customerRepository;
  final SaveCustomerInLocalUseCase _saveCustomer;

  Future<Either<ErrorHandler, Customer>> call({GetCustomerMode mode = GetCustomerMode.onlyLocal}) async {
    switch (mode) {
      case GetCustomerMode.onlyLocal:
        return await _getLocalCustomer();

      case GetCustomerMode.remote:
        return (await _customerRepository.getCustomer()).fold((l) => left(l), (r) async {
          await _saveCustomer(r);
          return right(r);
        });

      case GetCustomerMode.firstLocal:
        final localCustomerResult = await _getLocalCustomer();
        unawaited(_customerRepository
            .getCustomer()
            .then((value) => value.fold((_) => null, (customer) => _saveCustomer(customer))));

        return localCustomerResult;
    }
  }

  Future<Either<ErrorHandler, Customer>> _getLocalCustomer() async {
    final customerResult = await _customerRepository.getLocalCustomer();
    return customerResult;
  }
}
