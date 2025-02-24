import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../dto/delete_account/delete_customer_input_dto.fr.dart';

abstract class CustomerDatasource {
  Future<Either<ErrorHandler, CustomerDTO>> getCustomer();
  Future<Either<ErrorHandler, CustomerDTO>> updateCustomer(CustomerDTO newCustomer);
  Future<Either<ErrorHandler, CustomerDTO>> updateEmail(String newEmail, String password);
  Future<Either<ErrorHandler, CustomerDTO>> updatePassword(String currentPassword, String newPassword);
  Future<Either<ErrorHandler, bool>> deleteAccount(DeleteCustomerInputDTO input);
}
