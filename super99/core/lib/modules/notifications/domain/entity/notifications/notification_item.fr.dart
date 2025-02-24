import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_item.fr.freezed.dart';

@freezed
class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    required String id,
    required String userId,
    required String title,
    required String message,
    required String createdAt,
    required bool isUsed,
    required String notificationType,
    required String mda,
    required String balance,
  }) = _NotificationItem;
}

extension NotificationItemX on NotificationItem {
  String getDaysDifferenceFromNow(BuildContext context) {
    // Convertir la cadena de fecha en un objeto DateTime
    DateTime providedDate = DateTime.parse(createdAt);

    // Obtener la fecha actual
    DateTime currentDate = DateTime.now();

    // Calcular la diferencia en días y retornarla
    int dayDiferences = currentDate.difference(providedDate).inDays;
    String unidad = '';
    int cantidad = 0;
    final locale = "context.l10n.localeName";
    if (dayDiferences == 0) {
      int secondsDiferences = currentDate.difference(providedDate).inSeconds;
      if (secondsDiferences < 60) {
        unidad = "context.l10n.seconds";
        cantidad = secondsDiferences;
      } else if (secondsDiferences < 3600) {
        unidad = "context.l10n.minuts";
        cantidad = secondsDiferences ~/ 60;
      } else {
        unidad = "context.l10n.hours";
        cantidad = secondsDiferences ~/ 3600;
      }

      return locale == 'en' ? '$cantidad $unidad ${"context.l10n.ago"}' : '${"context.l10n.ago"} $cantidad $unidad';
    } else {
      return locale == 'en'
          ? '$dayDiferences ${"context.l10n.days"} ${"context.l10n.ago"}'
          : '${"context.l10n.ago"} $dayDiferences ${"context.l10n.days"}';
    }
  }
}
