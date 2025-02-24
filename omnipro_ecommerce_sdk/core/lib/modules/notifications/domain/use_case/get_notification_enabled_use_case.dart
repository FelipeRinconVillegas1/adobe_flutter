import 'package:dartz/dartz.dart';

import '../../../../utils/error_handler/error_handler.dart';
import '../../data/repository/notification_repository.dart';

class GetNotificationEnabledUseCase {
  GetNotificationEnabledUseCase(this._notificationRepository);

  final NotificationRepository _notificationRepository;

  Future<Either<ErrorHandler, bool>> call(String email) async {
    return await _notificationRepository.getNotificationEnabled(email);
  }
}
