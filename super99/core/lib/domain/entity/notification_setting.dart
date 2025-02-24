import 'package:equatable/equatable.dart';

class NotificationSetting extends Equatable {
  ///
  final int userId;

  ///
  final bool showNotifications;

  ///
  final bool isActiveSound;

  const NotificationSetting({
    required this.userId,
    required this.showNotifications,
    required this.isActiveSound,
  });

  NotificationSetting copyWith({
    int? userId,
    bool? showNotifications,
    bool? isActiveSound,
  }) {
    return NotificationSetting(
      userId: userId ?? this.userId,
      showNotifications: showNotifications ?? this.showNotifications,
      isActiveSound: isActiveSound ?? this.isActiveSound,
    );
  }

  @override
  List<Object?> get props => [userId, showNotifications, isActiveSound];
}
