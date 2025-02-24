import 'package:auth/login/di_auth.fr.dart';
import 'package:auth/shared/data/identify_with_social_media.dart';
import 'package:auth/sign_up/domain/use_case/create_customer_use_case.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'data/datasource/sign_up_data_source.dart';
import 'data/datasource/sign_up_data_source_impl.dart';
import 'data/repository/sign_up_repository.dart';
import 'data/repository/sig_up_repository_impl.dart';
import 'domain/use_case/get_user_credential_by_social_media.dart';
import 'package:core/local/di_secure_storage.fr.dart';

part 'di_sign_up.fr.g.dart';

@riverpod
CreateCustomerUseCase createCustomerUseCaseSource(CreateCustomerUseCaseSourceRef ref) {
  return CreateCustomerUseCase(ref.watch(signUpRepositorySourceProvider),
      ref.watch(secureStorageRepositorySourceProvider), ref.watch(loginWithPasswordUseCaseProvider));
}

@riverpod
GetUserCredentialBySocialMedia getUserCredentialBySocialMedia(GetUserCredentialBySocialMediaRef ref) {
  return GetUserCredentialBySocialMedia(ref.watch(signUpRepositorySourceProvider));
}

@riverpod
SignUpRepository signUpRepositorySource(SignUpRepositorySourceRef ref) {
  return SignUpRepositoryImpl(ref.watch(signUpDatasourceSourceProvider));
}

@riverpod
SignUpDataSource signUpDatasourceSource(SignUpDatasourceSourceRef ref) {
  return SignUpDataSourceImpl(
    ref.watch(graphQLServiceSourceProvider),
    ref.watch(identifyWithSocialMediaSourceProvider),
  );
}

@riverpod
IdentifyWithSocialMedia identifyWithSocialMediaSource(IdentifyWithSocialMediaSourceRef ref) {
  return IdentifyWithSocialMedia(GoogleSignIn());
}
