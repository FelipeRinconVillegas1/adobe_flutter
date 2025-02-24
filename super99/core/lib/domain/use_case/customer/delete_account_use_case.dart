import 'package:core/domain/entity/delete_account/delete_customer_input.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../data/repository/customer/customer_repository.dart';

class DeleteAccountUseCase {
  DeleteAccountUseCase(this._customerRepository);

  final CustomerRepository _customerRepository;

  Future<Either<ErrorHandler, bool>> execute({required String password}) async {
    return await _customerRepository.deleteAccount(DeleteCustomerInput(
      password: password,
    ));
  }
}
