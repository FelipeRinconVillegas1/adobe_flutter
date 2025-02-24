import 'package:core/domain/entity/marketing_event.dart';

/// A repository for tracking marketing events.
abstract class MarketingEventRepository {
  /// Tracks a marketing event.
  Future<void> trackEvent(MarketingEvent event);
}
