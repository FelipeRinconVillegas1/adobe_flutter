import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../shared/data/identify_with_social_media.dart';
import '../dto/create_customer_dto.fr.dart';
import 'sign_up_data_source.dart';
import 'sign_up_mutation.dart';

class SignUpDataSourceImpl implements SignUpDataSource {
  final GraphQLService _graphQLService;
  final IdentifyWithSocialMedia _identifyWithSocialMedia;

  SignUpDataSourceImpl(this._graphQLService, this._identifyWithSocialMedia);

  @override
  Future<Either<ErrorHandler, CustomerDTO>> createAccount(CreateCustomerDTO createAccountDTO) async {
    final mutation = createCustomerMutation(createAccountDTO);

    return secureServerCall(() async {
      final response = await _graphQLService.mutation(
        mutation,
      );

      return response.fold((l) => left(l),
          (dataCustomer) => right(CustomerDTO.fromJson(dataCustomer.data!['createCustomerV2']['customer'])));
    });
  }

  @override
  Future<Either<ErrorHandler, UserCredentialResponseDTO>> getUserCredentialBySocialMedia(
      ProviderAuthentication providerAuthentication) async {
    return await _identifyWithSocialMedia(providerAuthentication);
  }
}
