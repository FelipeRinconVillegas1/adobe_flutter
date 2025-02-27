import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/data/dto/delete_account/delete_customer_input_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'customer_datasource.dart';
import 'customer_mutation.dart';
import 'customer_query.dart';

class CustomerDatasourceImpl extends CustomerDatasource {
  CustomerDatasourceImpl(this._graphQLService);

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, CustomerDTO>> getCustomer() async {
    return secureServerCall(() async {
      final result = await _graphQLService.query(
        getCustomerQuery(),
      );

      return result.fold((l) => left(l), (json) => Right(CustomerDTO.fromJson(json.data?['customer'])));
    });
  }

  @override
  Future<Either<ErrorHandler, CustomerDTO>> updateCustomer(CustomerDTO newCustomer) {
    return secureServerCall(() async {
      String mutation = updateCustomerMutation(newCustomer);
      final result = await _graphQLService.mutation(mutation);

      return result.fold((l) => left(l), (response) {
        Map<String, dynamic> updateJson = (response.data?['updateCustomerV2']['customer']);
        updateJson.putIfAbsent('email', () => newCustomer.email);

        return Right(CustomerDTO.fromJson(updateJson));
      });
    });
  }

  @override
  Future<Either<ErrorHandler, CustomerDTO>> updateEmail(String newEmail, String password) {
    return secureServerCall(() async {
      final mutation = updateCustomerEmailMutation(newEmail, password);

      final result = await _graphQLService.mutation(mutation);

      return result.fold(
          (l) => left(l), (r) => right(CustomerDTO.fromJson(r.data!['updateCustomerEmail']['customer'])));
    });
  }

  @override
  Future<Either<ErrorHandler, CustomerDTO>> updatePassword(String currentPassword, String newPassword) {
    return secureServerCall(() async {
      final mutation = updateCustomerPasswordMutation(currentPassword, newPassword);

      final result = await _graphQLService.mutation(mutation);

      return result.fold(
          (l) => left(l), (r) => right(CustomerDTO.fromJson(r.data!['changeCustomerPassword'])));
    });
  }

  @override
  Future<Either<ErrorHandler, bool>> deleteAccount(DeleteCustomerInputDTO input) {
    return secureServerCall(() async {
      final mutation = deleteAccountMutation(input);

      final result = await _graphQLService.mutation(mutation);

      return result.fold((l) => left(l), (r) => right(r.data!['deleteCustomerValidate']['success']));
    });
  }
}
