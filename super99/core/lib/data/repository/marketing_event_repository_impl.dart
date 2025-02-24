import 'package:core/domain/entity/marketing_event.dart';
import 'marketing_event_repository.dart';

/// Implementation repository for tracking marketing events.
class MarketingEventRepositoryImpl extends MarketingEventRepository {
  // TODO: FELIPE ADD DATA SOURCES EVENTS HERE

  @override
  Future<void> trackEvent(MarketingEvent event) {
    if (event.platforms.contains(MarketingEventPlatform.platform1)) {
      // TODO: FELIPE  SEND TO PLATFORM 1
    }

    // TODO: FELIPE implement trackEvent
    throw UnimplementedError();
  }
}
