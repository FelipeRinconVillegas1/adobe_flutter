import 'package:auth/login/data/datasource/login_datasource.dart';
import 'package:auth/login/data/datasource/login_datasource_impl.dart';
import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:auth/login/data/repository/auth_repository_impl.dart' show AuthRepositoryImpl;
import 'package:auth/login/domain/use_case/login_with_password_use_case.dart';
import 'package:auth/shared/data/identify_with_social_media.dart';
import 'package:auth/sign_up/domain/use_case/create_customer_use_case.dart';
import 'package:core/di/customer/di_customer.fr.dart';
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
AuthRepository loginRepository(LoginRepositoryRef ref) {
  return AuthRepositoryImpl(ref.watch(loginDatasourceProvider));
}

@riverpod
LoginWithPasswordUseCase loginWithPasswordUseCase(LoginWithPasswordUseCaseRef ref) {
  return LoginWithPasswordUseCase(ref.watch(loginRepositoryProvider), ref.watch(getCustomerUseCaseProvider),
      ref.watch(saveSuggestedEmailUseCaseProvider));
}

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
LoginDatasource loginDatasource(LoginDatasourceRef ref) {
  return LoginDatasourceImpl(ref.watch(graphQLServiceSourceProvider), ref.watch(secureStorageDatasourceSourceProvider),
      ref.watch(identifyWithSocialMediaSourceProvider));
}

@riverpod
IdentifyWithSocialMedia identifyWithSocialMediaSource(IdentifyWithSocialMediaSourceRef ref) {
  return IdentifyWithSocialMedia(GoogleSignIn());
}
