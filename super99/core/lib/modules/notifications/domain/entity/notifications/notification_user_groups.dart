import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_user_groups.freezed.dart';

@freezed
class NotificationUserGroups with _$NotificationUserGroups {
  const factory NotificationUserGroups({
    @Default([]) List<String> groups,
  }) = _NotificationUserGroups;
}
