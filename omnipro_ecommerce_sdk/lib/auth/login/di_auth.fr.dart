import 'package:core/di/customer/di_customer.fr.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../sign_up/di_sign_up.fr.dart';
import '../validate_account/domain/use_case/send_code_use_case.dart';
import '../validate_account/domain/use_case/validate_if_customer_exist_byemail_use_case.dart';
import '../validate_account/domain/use_case/validate_if_customer_exist_byphone_use_case.dart';
import 'data/datasource/login_datasource.dart';
import 'data/datasource/login_datasource_impl.dart';
import 'data/repository/auth_repository.dart';
import 'data/repository/auth_repository_impl.dart';
import 'domain/use_case/get_session_customer_use_case.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'domain/use_case/login_with_auth_provider_use_case.dart';
import 'domain/use_case/login_with_code_use_case.dart';
import 'domain/use_case/login_with_password_use_case.dart';
import 'domain/use_case/request_passwod_reset_use_case.dart';

part 'di_auth.fr.g.dart';

@riverpod
RequestPasswordResetUseCase requestPasswordResetUseCase(RequestPasswordResetUseCaseRef ref) {
  return RequestPasswordResetUseCase(ref.watch(loginRepositoryProvider));
}

@riverpod
GetSessionUseCase getSessionCustomerUseCaseSource(GetSessionCustomerUseCaseSourceRef ref) {
  return GetSessionUseCase(ref.watch(secureStorageRepositorySourceProvider));
}

@riverpod
LoginWithPasswordUseCase loginWithPasswordUseCase(LoginWithPasswordUseCaseRef ref) {
  return LoginWithPasswordUseCase(ref.watch(loginRepositoryProvider), ref.watch(getCustomerUseCaseProvider),
      ref.watch(saveSuggestedEmailUseCaseProvider));
}

@riverpod
LoginWithAuthProviderUseCase loginWithAuthProviderUseCase(LoginWithAuthProviderUseCaseRef ref) {
  return LoginWithAuthProviderUseCase(ref.watch(loginRepositoryProvider), ref.watch(getCustomerUseCaseProvider));
}

@riverpod
AuthRepository loginRepository(LoginRepositoryRef ref) {
  return AuthRepositoryImpl(ref.watch(loginDatasourceProvider));
}

@riverpod
LoginDatasource loginDatasource(LoginDatasourceRef ref) {
  return LoginDatasourceImpl(ref.watch(graphQLServiceSourceProvider), ref.watch(secureStorageDatasourceSourceProvider),
      ref.watch(identifyWithSocialMediaSourceProvider));
}

@riverpod
ValidateIfCustomerExistByEmailUseCase validateIfCustomerExistByEmailUseCase(
    ValidateIfCustomerExistByEmailUseCaseRef ref) {
  return ValidateIfCustomerExistByEmailUseCase(ref.watch(loginRepositoryProvider));
}

@riverpod
ValidateIfCustomerExistByPhoneUseCase validateIfCustomerExistByPhoneUseCase(
    ValidateIfCustomerExistByPhoneUseCaseRef ref) {
  return ValidateIfCustomerExistByPhoneUseCase(ref.watch(loginRepositoryProvider));
}

@riverpod
SendCodeUseCase sendSmsCodeUseCase(SendSmsCodeUseCaseRef ref) {
  return SendCodeUseCase(ref.watch(loginRepositoryProvider));
}

@riverpod
LoginWithCodeUseCase loginWithCodeUseCase(LoginWithCodeUseCaseRef ref) {
  return LoginWithCodeUseCase(ref.watch(loginRepositoryProvider), ref.watch(saveCustomerInLocalUseCaseProvider));
}
