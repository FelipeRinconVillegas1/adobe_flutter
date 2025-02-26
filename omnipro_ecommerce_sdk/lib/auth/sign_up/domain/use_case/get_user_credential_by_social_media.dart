import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/sign_up_repository.dart';

class GetUserCredentialBySocialMedia {
  final SignUpRepository _signUpRepository;

  GetUserCredentialBySocialMedia(this._signUpRepository);

  Future<Either<ErrorHandler, UserCredentialResponse>> call(ProviderAuthentication providerAuthentication) async {
    try {
      return _signUpRepository.getUserCredentialBySocialMedia(providerAuthentication);
    } catch (e) {
      rethrow;
    }
  }
}
