import 'package:core/utils/share_content.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/utils/info_app.dart';

import '../utils/timer_provider.dart';

part 'util_provider.fr.g.dart';

@riverpod
ShareContent shareContentSource(ShareContentSourceRef ref) {
  return ShareContent();
}

@riverpod
InfoAppUtil infoAppSource(InfoAppSourceRef ref) {
  return InfoAppUtil();
}

@riverpod
TimeProvider timeProviderSource(TimeProviderSourceRef ref) {
  return TimeProvider();
}
