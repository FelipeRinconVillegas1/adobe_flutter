import 'package:core/data/repository/bot_whatsapp_repository.dart';
import 'package:core/data/repository/get_simple_flag_repository.dart';
import 'package:core/data/repository/session/log_out_repository.dart';
import 'package:core/data/repository/share_product_repository.dart';
import 'package:core/data/repository/support_messenger_repository.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repository/dropdown_manager/dropdown_options_repository.dart';
import '../data/repository/dropdown_manager/dropdown_options_repository_impl.dart';

part 'repository_provider.fr.g.dart';

@Riverpod(keepAlive: true)
LogOutRepository logOutRepositorySource(LogOutRepositorySourceRef ref) {
  return LogOutRepositoryImpl(ref.watch(logOutDatasourceProvider));
}

@riverpod
SupportMessengerRepository supportMessengerRepository(SupportMessengerRepositoryRef ref) {
  return SupportMessengerRepositoryImpl(ref.watch(remoteConfigDataSourceProvider));
}

@riverpod
BotWhatsappRepository botWhatsappRepositorySource(BotWhatsappRepositorySourceRef ref) {
  return BotWhatsappRepositoryImpl(ref.watch(remoteConfigDataSourceProvider));
}

@riverpod
ShareProductRepository shareProductRepository(ShareProductRepositoryRef ref) {
  return ShareProductRepositoryImpl(ref.watch(remoteConfigDataSourceProvider));
}

@riverpod
GetSimpleFlagRepository getSimpleFlagRepository(GetSimpleFlagRepositoryRef ref) {
  return GetSimpleFlagRepositoryImpl(ref.watch(remoteConfigDataSourceProvider));
}

@Riverpod(keepAlive: true)
GetSimpleFlagRepository getSimpleFlagRepositoryKeepAlive(GetSimpleFlagRepositoryKeepAliveRef ref) {
  return GetSimpleFlagRepositoryImpl(ref.watch(remoteConfigDataSourceProvider));
}

@Riverpod(keepAlive: true)
DropdownOptionRepository dropdownOptionRepository(DropdownOptionRepositoryRef ref) {
  return DropdownOptionRepositoryImpl(
    ref.watch(dropdownOptionsDatasourceProvider),
  );
}
