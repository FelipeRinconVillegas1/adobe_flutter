import 'package:core/di/repository_provider.fr.dart';
import 'package:core/di/util_provider.fr.dart';
import 'package:core/domain/use_case/check_internet_connection_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/domain/use_case/dropdown_manager/dropdown_manager.dart';
import 'package:core/domain/use_case/get_simple_flag_use_case.dart';
import 'package:core/domain/use_case/is_first_time_user_use_case.dart';
import 'package:core/domain/use_case/session/log_out_use_case.dart';
import 'package:core/domain/use_case/open_bot_whatsapp_use_case.dart';
import 'package:core/domain/use_case/open_chat_messenger_use_case.dart';
import 'package:core/domain/use_case/open_chat_whatsapp_use_case.dart';
import 'package:core/domain/use_case/open_support_messenger_use_case.dart';
import 'package:core/domain/use_case/set_first_time_user_use_case.dart';
import 'package:core/domain/use_case/share_product_with_native_methods.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:core/utils/launch_url.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'data_provider.fr.dart';

part 'use_cases_provider.fr.g.dart';

@Riverpod(keepAlive: true)
LogOutUseCase logOutUseCaseSource(LogOutUseCaseSourceRef ref) {
  return LogOutUseCase(ref.watch(logOutRepositorySourceProvider));
}

@riverpod
CheckInternetConnectionUseCase checkInternetConnectionUseCase(CheckInternetConnectionUseCaseRef ref) {
  return CheckInternetConnectionUseCase(ref.watch(connectivityCheckProvider));
}

@riverpod
OpenSupportMessengerUseCase openSupportMessengerUseCase(OpenSupportMessengerUseCaseRef ref) {
  return OpenSupportMessengerUseCase(
      ref.watch(openChatMessengerUseCaseProvider), ref.watch(supportMessengerRepositoryProvider));
}

@riverpod
OpenChatMessengerUseCase openChatMessengerUseCase(OpenChatMessengerUseCaseRef ref) {
  return OpenChatMessengerUseCase(ref.watch(launchUrlSourceProvider));
}

@riverpod
ShareProductNativeMethodsUseCase sharedProductNativeMethods(SharedProductNativeMethodsRef ref) {
  return ShareProductNativeMethodsUseCase(
      ref.watch(shareProductRepositoryProvider), ref.watch(shareContentSourceProvider));
}

@Riverpod(keepAlive: true)
IsCustomerLoggedIn isCustomerLoggedInSource(IsCustomerLoggedInSourceRef ref) {
  return IsCustomerLoggedIn(ref.watch(secureStorageRepositorySourceProvider));
}

@riverpod
OpenBotWhatsAppUseCase openChatBotWhatsAppUseCaseSource(OpenChatBotWhatsAppUseCaseSourceRef ref) {
  return OpenBotWhatsAppUseCase(
      ref.watch(openChatWhatsAppUseCaseSourceProvider), ref.watch(botWhatsappRepositorySourceProvider));
}

@riverpod
OpenChatWhatsAppUseCase openChatWhatsAppUseCaseSource(OpenChatWhatsAppUseCaseSourceRef ref) {
  return OpenChatWhatsAppUseCase(ref.watch(launchUrlSourceProvider));
}

@riverpod
LaunchUrl launchUrlSource(LaunchUrlSourceRef ref) {
  return LaunchUrl();
}

@riverpod
IsFirstTimeUserUseCase isFirstTimeUserUseCase(IsFirstTimeUserUseCaseRef ref) {
  return IsFirstTimeUserUseCase(ref.watch(secureStorageRepositorySourceProvider));
}

@riverpod
SetFirstTimeUserUseCase setFirstTimeUserUseCase(SetFirstTimeUserUseCaseRef ref) {
  return SetFirstTimeUserUseCase(ref.watch(secureStorageRepositorySourceProvider));
}

@riverpod
GetSimpleFlagUseCase getSimpleFlagUseCase(GetSimpleFlagUseCaseRef ref) {
  return GetSimpleFlagUseCase(ref.watch(getSimpleFlagRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetSimpleFlagUseCase getSimpleFlagUseCaseKeepAlive(GetSimpleFlagUseCaseKeepAliveRef ref) {
  return GetSimpleFlagUseCase(ref.watch(getSimpleFlagRepositoryKeepAliveProvider));
}

@Riverpod(keepAlive: true)
DropdownOptionsUseCase dropdownOptionsUseCase(DropdownOptionsUseCaseRef ref) {
  return DropdownOptionsUseCase(ref.watch(dropdownOptionRepositoryProvider));
}

